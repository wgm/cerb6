<?php
/***********************************************************************
| Cerb(tm) developed by Webgroup Media, LLC.
|-----------------------------------------------------------------------
| All source code & content (c) Copyright 2002-2015, Webgroup Media LLC
|   unless specifically noted otherwise.
|
| This source code is released under the Devblocks Public License.
| The latest version of this license can be found here:
| http://cerberusweb.com/license
|
| By using this software, you acknowledge having read this license
| and agree to be bound thereby.
| ______________________________________________________________________
|	http://www.cerbweb.com	    http://www.webgroupmedia.com/
***********************************************************************/

abstract class AbstractEvent_Ticket extends Extension_DevblocksEvent {
	protected $_event_id = null; // override
	
	/**
	 *
	 * @param integer $context_id
	 * @param integer $group_id
	 * @return Model_DevblocksEvent
	 */
	function generateSampleEventModel(Model_TriggerEvent $trigger, $context_id=null, $comment_id=null) {
		if(empty($context_id)) {
			// Pull the latest ticket
			list($results) = DAO_Ticket::search(
				array(),
				array(
					new DevblocksSearchCriteria(SearchFields_Ticket::TICKET_CLOSED,'=',0),
				),
				10,
				0,
				SearchFields_Ticket::TICKET_ID,
				false,
				false
			);
			
			shuffle($results);
			
			$result = array_shift($results);
			
			$context_id = $result[SearchFields_Ticket::TICKET_ID];
		}

		// If this is the 'new comment on convo in group' event, simulate a comment
		if(empty($comment_id) && get_class($this) == 'Event_CommentOnTicketInGroup') {
			if(!empty($context_id))
				$comment_id = DAO_Comment::random(CerberusContexts::CONTEXT_TICKET, $context_id);
		}
		
		return new Model_DevblocksEvent(
			$this->_event_id,
			array(
				'context_id' => $context_id,
				'comment_id' => $comment_id,
			)
		);
	}
	
	function setEvent(Model_DevblocksEvent $event_model=null, Model_TriggerEvent $trigger=null) {
		$labels = array();
		$values = array();
		$blank = array();

		// We can accept a model object or a context_id
		@$model = $event_model->params['context_model'] ?: $event_model->params['context_id'];
		
		/**
		 * Ticket
		 */
		$merge_token_labels = array();
		$merge_token_values = array();
		CerberusContexts::getContext(CerberusContexts::CONTEXT_TICKET, $model, $merge_token_labels, $merge_token_values, null, true);

			@$group_id = $merge_token_values['group_id'];

			// Clear dupe labels
			CerberusContexts::scrubTokensWithRegexp(
				$merge_token_labels,
				$blank, // ignore
				array(
					"#^group_#",
					"#^bucket_id$#",
				)
			);
			
			$values['ticket_has_owner'] = !empty($merge_token_values['owner_id']) ? 1 : 0;
			
			// Merge
			CerberusContexts::merge(
				'ticket_',
				'',
				$merge_token_labels,
				$merge_token_values,
				$labels,
				$values
			);
			
		/**
		 * Group
		 */
		
		$merge_token_labels = array();
		$merge_token_values = array();
		CerberusContexts::getContext(CerberusContexts::CONTEXT_GROUP, $group_id, $merge_token_labels, $merge_token_values, 'Ticket:Group:', true);
				
			// Merge
			CerberusContexts::merge(
				'group_',
				'',
				$merge_token_labels,
				$merge_token_values,
				$labels,
				$values
			);
		
		/**
		 * Comment
		 */
			
		@$comment_id = $event_model->params['comment_id'];

		if(get_class($this) == 'Event_CommentOnTicketInGroup') {
			$merge_token_labels = array();
			$merge_token_values = array();
			CerberusContexts::getContext(CerberusContexts::CONTEXT_COMMENT, $comment_id, $merge_token_labels, $merge_token_values, 'Ticket:Comment:', true);
				
				// Merge
				CerberusContexts::merge(
					'comment_',
					'',
					$merge_token_labels,
					$merge_token_values,
					$labels,
					$values
				);
		}
		
		/**
		 * Return
		 */

		$this->setLabels($labels);
		$this->setValues($values);
	}
	
	function renderSimulatorTarget($trigger, $event_model) {
		$context = CerberusContexts::CONTEXT_TICKET;
		$context_id = $event_model->params['context_id'];
		DevblocksEventHelper::renderSimulatorTarget($context, $context_id, $trigger, $event_model);
	}
	
	function getValuesContexts($trigger) {
		$vals = array(
			'ticket_id' => array(
				'label' => 'Ticket',
				'context' => CerberusContexts::CONTEXT_TICKET,
			),
			'ticket_watchers' => array(
				'label' => 'Ticket watchers',
				'context' => CerberusContexts::CONTEXT_WORKER,
				'is_multiple' => true,
			),
			'group_id' => array(
				'label' => 'Ticket group',
				'context' => CerberusContexts::CONTEXT_GROUP,
			),
			'group_watchers' => array(
				'label' => 'Ticket group watchers',
				'context' => CerberusContexts::CONTEXT_WORKER,
				'is_multiple' => true,
			),
			/*
			'bucket_id' => array(
				'label' => 'Bucket',
				'context' => CerberusContexts::CONTEXT_BUCKET,
			),
			*/
			'ticket_initial_message_sender_id' => array(
				'label' => 'Ticket initial message sender',
				'context' => CerberusContexts::CONTEXT_ADDRESS,
			),
			'ticket_initial_message_sender_org_id' => array(
				'label' => 'Ticket initial message sender org',
				'context' => CerberusContexts::CONTEXT_ORG,
			),
			'ticket_latest_message_sender_id' => array(
				'label' => 'Ticket latest message sender',
				'context' => CerberusContexts::CONTEXT_ADDRESS,
			),
			'ticket_latest_message_sender_org_id' => array(
				'label' => 'Ticket latest message sender org',
				'context' => CerberusContexts::CONTEXT_ORG,
			),
			'ticket_owner_id' => array(
				'label' => 'Ticket owner',
				'context' => CerberusContexts::CONTEXT_WORKER,
			),
			'ticket_org_id' => array(
				'label' => 'Ticket org',
				'context' => CerberusContexts::CONTEXT_ORG,
			),
			'ticket_org_watchers' => array(
				'label' => 'Ticket org watchers',
				'context' => CerberusContexts::CONTEXT_WORKER,
				'is_multiple' => true,
			),
		);
		
		$vars = parent::getValuesContexts($trigger);

		$vals_to_ctx = array_merge($vals, $vars);
		DevblocksPlatform::sortObjects($vals_to_ctx, '[label]');
		
		return $vals_to_ctx;
	}
	
	function getConditionExtensions(Model_TriggerEvent $trigger) {
		$labels = $this->getLabels($trigger);
		$types = $this->getTypes();
		
		$labels['ticket_has_owner'] = 'Ticket has owner';
		$labels['ticket_latest_incoming_activity'] = 'Ticket latest incoming activity';
		$labels['ticket_latest_outgoing_activity'] = 'Ticket latest outgoing activity';
		
		$labels['group_id'] = 'Ticket group';
		$labels['group_and_bucket'] = 'Ticket group and bucket';
		
		$labels['group_link'] = 'Ticket group is linked';
		$labels['owner_link'] = 'Ticket owner is linked';
		$labels['ticket_initial_message_sender_link'] = 'Ticket initial message sender is linked';
		$labels['ticket_initial_message_sender_org_link'] = 'Ticket initial message sender org is linked';
		$labels['ticket_latest_message_sender_link'] = 'Ticket latest message sender is linked';
		$labels['ticket_latest_message_sender_org_link'] = 'Ticket latest message sender org is linked';
		$labels['ticket_link'] = 'Ticket is linked';
		
		$labels['group_watcher_count'] = 'Ticket group watcher count';
		$labels['ticket_org_watcher_count'] = 'Ticket org watcher count';
		$labels['ticket_watcher_count'] = 'Ticket watcher count';
		
		$types['ticket_has_owner'] = Model_CustomField::TYPE_CHECKBOX;
		$types['ticket_initial_message_header'] = null;
		$types['ticket_latest_message_header'] = null;
		$types['ticket_latest_incoming_activity'] = null;
		$types['ticket_latest_outgoing_activity'] = null;
		
		$types['group_id'] = null;
		$types['group_and_bucket'] = null;
		
		$types['group_link'] = null;
		$types['owner_link'] = null;
		$types['ticket_initial_message_sender_link'] = null;
		$types['ticket_initial_message_sender_org_link'] = null;
		$types['ticket_latest_message_sender_link'] = null;
		$types['ticket_latest_message_sender_org_link'] = null;
		$types['ticket_link'] = null;
		
		$types['group_watcher_count'] = null;
		$types['ticket_org_watcher_count'] = null;
		$types['ticket_watcher_count'] = null;
		
		$conditions = $this->_importLabelsTypesAsConditions($labels, $types);
		return $conditions;
	}
	
	function renderConditionExtension($token, $as_token, $trigger, $params=array(), $seq=null) {
		$tpl = DevblocksPlatform::getTemplateService();
		$tpl->assign('params', $params);

		if(!is_null($seq))
			$tpl->assign('namePrefix','condition'.$seq);
		
		switch($as_token) {
			case 'ticket_spam_score':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/condition_spam_score.tpl');
				break;
				
			case 'ticket_spam_training':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/condition_spam_training.tpl');
				break;
				
			case 'ticket_status':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/condition_status.tpl');
				break;
				
			case 'ticket_initial_message_headers':
			case 'ticket_initial_response_message_headers':
			case 'ticket_latest_message_headers':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/condition_header.tpl');
				break;
				
			case 'ticket_latest_incoming_activity':
			case 'ticket_latest_outgoing_activity':
				$tpl->display('devblocks:cerberusweb.core::internal/decisions/conditions/_date.tpl');
				break;
				
			case 'group_id':
				$groups = DAO_Group::getAll();
				$tpl->assign('groups', $groups);
				
				$tpl->display('devblocks:cerberusweb.core::events/model/ticket/condition_group.tpl');
				break;
				
			case 'group_and_bucket':
				$groups = DAO_Group::getAll();
				$tpl->assign('groups', $groups);
				
				$group_buckets = DAO_Bucket::getGroups();
				$tpl->assign('buckets_by_group', $group_buckets);
				
				$tpl->display('devblocks:cerberusweb.core::events/model/ticket/condition_group_and_bucket.tpl');
				break;
				
			case 'group_link':
			case 'owner_link':
			case 'ticket_initial_message_sender_link':
			case 'ticket_initial_message_sender_org_link':
			case 'ticket_latest_message_sender_link':
			case 'ticket_latest_message_sender_org_link':
			case 'ticket_link':
				$contexts = Extension_DevblocksContext::getAll(false);
				$tpl->assign('contexts', $contexts);
				$tpl->display('devblocks:cerberusweb.core::events/condition_link.tpl');
				break;
				
			case 'group_watcher_count':
			case 'ticket_org_watcher_count':
			case 'ticket_watcher_count':
				$tpl->display('devblocks:cerberusweb.core::internal/decisions/conditions/_number.tpl');
				break;
		}

		$tpl->clearAssign('namePrefix');
		$tpl->clearAssign('params');
	}
	
	function runConditionExtension($token, $as_token, $trigger, $params, DevblocksDictionaryDelegate $dict) {
		$pass = true;
		
		switch($as_token) {
			case 'ticket_spam_score':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				
				if(!is_numeric($dict->$token)) {
					@$dict->$token = intval($dict->$token);
				}
				
				$value = $dict->$token * 100;

				switch($oper) {
					case 'is':
						$pass = intval($value)==intval($params['value']);
						break;
					case 'gt':
						$pass = intval($value) > intval($params['value']);
						break;
					case 'lt':
						$pass = intval($value) < intval($params['value']);
						break;
				}
				
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'ticket_spam_training':
			case 'ticket_status':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				@$value = $dict->$token;
				
				if(!isset($params['values']) || !is_array($params['values'])) {
					$pass = false;
					break;
				}
				
				switch($oper) {
					case 'in':
						$pass = false;
						foreach($params['values'] as $v) {
							if($v == $value) {
								$pass = true;
								break;
							}
						}
						break;
				}
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'ticket_initial_response_message_headers':
			case 'ticket_initial_message_headers':
			case 'ticket_latest_message_headers':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				@$header = strtolower($params['header']);
				@$param_value = $params['value'];
				
				// Lazy load
				$header_values = $dict->$token;
				@$value = (is_array($header_values) && isset($header_values[$header])) ? $header_values[$header] : '';
				
				// Operators
				switch($oper) {
					case 'is':
						$pass = (0==strcasecmp($value, $param_value));
						break;
					case 'like':
						$regexp = DevblocksPlatform::strToRegExp($param_value);
						$pass = @preg_match($regexp, $value);
						break;
					case 'contains':
						$pass = (false !== stripos($value, $param_value)) ? true : false;
						break;
					case 'regexp':
						$pass = @preg_match($param_value, $value);
						break;
					default:
						$pass = false;
						break;
				}
				
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'ticket_latest_incoming_activity':
			case 'ticket_latest_outgoing_activity':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				@$from = $params['from'];
				@$to = $params['to'];

				$value = $dict->$token;
				
				@$from = intval(strtotime($from));
				@$to = intval(strtotime($to));
				
				$pass = ($value > $from && $value < $to);
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'group_id':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				
				@$in_group_ids = $params['group_id'];
				@$group_id = intval($dict->ticket_group_id);
				
				$pass = in_array($group_id, $in_group_ids);
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'group_and_bucket':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				
				@$in_group_id = $params['group_id'];
				@$in_bucket_ids = $params['bucket_id'];
				
				@$group_id = intval($dict->ticket_group_id);
				@$bucket_id = intval($dict->ticket_bucket_id);
				
				$pass = ($group_id==$in_group_id) && in_array($bucket_id, $in_bucket_ids);
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'group_link':
			case 'owner_link':
			case 'ticket_initial_message_sender_link':
			case 'ticket_initial_message_sender_org_link':
			case 'ticket_latest_message_sender_link':
			case 'ticket_latest_message_sender_org_link':
			case 'ticket_link':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');
				
				$from_context = null;
				$from_context_id = null;

				switch($as_token) {
					case 'group_link':
						$from_context = CerberusContexts::CONTEXT_GROUP;
						@$from_context_id = $dict->ticket_group_id;
						break;
					case 'owner_link':
						$from_context = CerberusContexts::CONTEXT_WORKER;
						@$from_context_id = $dict->ticket_owner_id;
						break;
					case 'ticket_initial_message_sender_link':
						$from_context = CerberusContexts::CONTEXT_ADDRESS;
						@$from_context_id = $dict->ticket_initial_message_sender_id;
						break;
					case 'ticket_initial_message_sender_org_link':
						$from_context = CerberusContexts::CONTEXT_ORG;
						@$from_context_id = $dict->ticket_initial_message_sender_org_id;
						break;
					case 'ticket_latest_message_sender_link':
						$from_context = CerberusContexts::CONTEXT_ADDRESS;
						@$from_context_id = $dict->ticket_latest_message_sender_id;
						break;
					case 'ticket_latest_message_sender_org_link':
						$from_context = CerberusContexts::CONTEXT_ORG;
						@$from_context_id = $dict->ticket_latest_message_sender_org_id;
						break;
					case 'ticket_link':
						$from_context = CerberusContexts::CONTEXT_TICKET;
						@$from_context_id = $dict->ticket_id;
						break;
					default:
						$pass = false;
				}
				
				// Get links by context+id
				
				if(!empty($from_context) && !empty($from_context_id)) {
					@$context_strings = $params['context_objects'];
					$links = DAO_ContextLink::intersect($from_context, $from_context_id, $context_strings);
					
					// OPER: any, !any, all
					switch($oper) {
						case 'in':
							$pass = (is_array($links) && !empty($links));
							break;
						case 'all':
							$pass = (is_array($links) && count($links) == count($context_strings));
							break;
						default:
							$pass = false;
							break;
					}
					
				} else {
					$pass = false;
				}
				
				$pass = ($not) ? !$pass : $pass;
				break;
				
			case 'group_watcher_count':
			case 'ticket_org_watcher_count':
			case 'ticket_watcher_count':
				$not = (substr($params['oper'],0,1) == '!');
				$oper = ltrim($params['oper'],'!');

				switch($as_token) {
					case 'group_watcher_count':
						$value = count($dict->group_watchers);
						break;
					case 'ticket_org_watcher_count':
						$value = count($dict->ticket_org_watchers);
						break;
					case 'ticket_watcher_count':
					default:
						$value = count($dict->ticket_watchers);
						break;
				}
				
				switch($oper) {
					case 'is':
						$pass = intval($value)==intval($params['value']);
						break;
					case 'gt':
						$pass = intval($value) > intval($params['value']);
						break;
					case 'lt':
						$pass = intval($value) < intval($params['value']);
						break;
				}
				
				$pass = ($not) ? !$pass : $pass;
				break;
				
			default:
				$pass = false;
				break;
		}
		
		return $pass;
	}
	
	function getActionExtensions(Model_TriggerEvent $trigger) {
		$actions =
			array(
				'add_recipients' => array('label' =>'Add recipients'),
				'add_watchers' => array('label' =>'Add watchers'),
				'create_comment' => array('label' =>'Create a comment'),
				'create_notification' => array('label' =>'Create a notification'),
				'create_task' => array('label' =>'Create a task'),
				'create_ticket' => array('label' =>'Create a ticket'),
				'move_to' => array('label' => 'Move to'),
				'relay_email' => array('label' => 'Relay to worker email'),
				'schedule_email_recipients' => array('label' => 'Schedule email to recipients'),
				'send_email' => array('label' => 'Send email'),
				'send_email_recipients' => array('label' => 'Send email to recipients'),
				'set_importance' => array('label' =>'Set ticket importance'),
				'set_org' => array('label' =>'Set organization'),
				'set_owner' => array('label' =>'Set ticket owner'),
				'set_reopen_date' => array('label' => 'Set ticket reopen date'),
				'set_spam_training' => array('label' => 'Set ticket spam training'),
				'set_status' => array('label' => 'Set ticket status'),
				'set_subject' => array('label' => 'Set ticket subject'),
				'set_links' => array('label' => 'Set links'),
			)
			+ DevblocksEventHelper::getActionCustomFieldsFromLabels($this->getLabels($trigger))
			;
		
		return $actions;
	}
	
	function renderActionExtension($token, $trigger, $params=array(), $seq=null) {
		$tpl = DevblocksPlatform::getTemplateService();
		$tpl->assign('params', $params);

		if(!is_null($seq))
			$tpl->assign('namePrefix','action'.$seq);

		$labels = $this->getLabels($trigger);
		$tpl->assign('token_labels', $labels);
			
		switch($token) {
			case 'add_recipients':
				DevblocksEventHelper::renderActionAddRecipients($trigger);
				break;
				
			case 'add_watchers':
				DevblocksEventHelper::renderActionAddWatchers($trigger);
				break;

			case 'create_comment':
				DevblocksEventHelper::renderActionCreateComment($trigger);
				break;
				
			case 'create_notification':
				$translate = DevblocksPlatform::getTranslationService();
				DevblocksEventHelper::renderActionCreateNotification($trigger);
				break;
				
			case 'create_task':
				DevblocksEventHelper::renderActionCreateTask($trigger);
				break;
				
			case 'create_ticket':
				DevblocksEventHelper::renderActionCreateTicket($trigger);
				break;
				
			case 'move_to':
				$groups = DAO_Group::getAll();
				$tpl->assign('groups', $groups);

				$group_buckets = DAO_Bucket::getGroups();
				$tpl->assign('group_buckets', $group_buckets);
				
				$tpl->display('devblocks:cerberusweb.core::events/model/ticket/action_move_to.tpl');
				break;
				
			case 'relay_email':
				if(false == ($va = $trigger->getVirtualAttendant()))
					break;
				
				switch($va->owner_context) {
					case CerberusContexts::CONTEXT_GROUP:
						// Filter to group members
						$group = DAO_Group::get($va->owner_context_id);
						DevblocksEventHelper::renderActionRelayEmail(
							array_keys($group->getMembers()),
							array('owner','watchers','workers'),
							'ticket_latest_message_content'
						);
						break;
						
					case CerberusContexts::CONTEXT_WORKER:
					default:
						$active_worker = CerberusApplication::getActiveWorker();
						DevblocksEventHelper::renderActionRelayEmail(
							array($active_worker->id),
							array('workers'),
							'ticket_latest_message_content'
						);
						break;
				}
				break;
				
			case 'schedule_email_recipients':
				DevblocksEventHelper::renderActionScheduleTicketReply();
				break;
				
			case 'set_importance':
				DevblocksEventHelper::renderActionSetTicketImportance($trigger);
				break;
				
			case 'set_org':
				DevblocksEventHelper::renderActionSetTicketOrg($trigger);
				break;
				
			case 'set_owner':
				DevblocksEventHelper::renderActionSetTicketOwner($trigger);
				break;
			
			case 'send_email':
				$placeholders = array(
					'ticket_bucket_reply_address_id,group_reply_address_id' => 'Ticket Bucket',
				);
				
				DevblocksEventHelper::renderActionSendEmail($trigger, $placeholders);
				break;
				
			case 'send_email_recipients':
				$tpl->assign('workers', DAO_Worker::getAll());
				
				$html_templates = DAO_MailHtmlTemplate::getAll();
				$tpl->assign('html_templates', $html_templates);
				
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_owner/action_send_email_recipients.tpl');
				break;
				
			case 'set_reopen_date':
				$tpl->display('devblocks:cerberusweb.core::internal/decisions/actions/_set_date.tpl');
				break;
				
			case 'set_spam_training':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/action_set_spam_training.tpl');
				break;
				
			case 'set_status':
				$tpl->display('devblocks:cerberusweb.core::events/mail_received_by_group/action_set_status.tpl');
				break;
				
			case 'set_subject':
				$tpl->display('devblocks:cerberusweb.core::internal/decisions/actions/_set_var_string.tpl');
				break;
			
			case 'set_links':
				DevblocksEventHelper::renderActionSetLinks($trigger);
				break;
				
			default:
				if(preg_match('#set_cf_(.*?)_custom_([0-9]+)#', $token, $matches)) {
					$field_id = $matches[2];
					$custom_field = DAO_CustomField::get($field_id);
					DevblocksEventHelper::renderActionSetCustomField($custom_field, $trigger);
				}
				break;
		}
		
		$tpl->clearAssign('params');
		$tpl->clearAssign('namePrefix');
		$tpl->clearAssign('token_labels');
	}
	
	function simulateActionExtension($token, $trigger, $params, DevblocksDictionaryDelegate $dict) {
		@$ticket_id = $dict->ticket_id;
		@$message_id = $dict->ticket_latest_message_id;

		if(empty($message_id) || empty($ticket_id))
			return;
		
		switch($token) {
			case 'add_recipients':
				return DevblocksEventHelper::simulateActionAddRecipients($params, $dict, 'ticket_id');
				break;
				
			case 'add_watchers':
				return DevblocksEventHelper::simulateActionAddWatchers($params, $dict, 'ticket_id');
				break;
			
			case 'create_comment':
				return DevblocksEventHelper::simulateActionCreateComment($params, $dict, 'ticket_id');
				break;
				
			case 'create_notification':
				return DevblocksEventHelper::simulateActionCreateNotification($params, $dict, 'ticket_id');
				break;
				
			case 'create_task':
				return DevblocksEventHelper::simulateActionCreateTask($params, $dict, 'ticket_id');
				break;

			case 'create_ticket':
				return DevblocksEventHelper::simulateActionCreateTicket($params, $dict, 'ticket_id');
				break;

			case 'relay_email':
				return DevblocksEventHelper::simulateActionRelayEmail(
					$params,
					$dict,
					CerberusContexts::CONTEXT_TICKET,
					$ticket_id,
					$dict->ticket_group_id,
					@intval($dict->ticket_bucket_id),
					$dict->ticket_latest_message_id,
					@intval($dict->ticket_owner_id),
					$dict->ticket_latest_message_sender_address,
					$dict->ticket_latest_message_sender_full_name,
					$dict->ticket_subject
				);
				break;
				
			case 'schedule_email_recipients':
				//return DevblocksEventHelper::simulateActionScheduleTicketReply($params, $dict, $ticket_id, $message_id);
				break;
				
			case 'send_email':
				return DevblocksEventHelper::simulateActionSendEmail($params, $dict);
				break;
				
			case 'send_email_recipients':
				return DevblocksEventHelper::simulateActionSendEmailRecipients($params, $dict);
				break;
				
			case 'set_importance':
				return DevblocksEventHelper::simulateActionSetTicketImportance($params, $dict, 'ticket_id', 'ticket_importance');
				break;
				
			case 'set_org':
				return DevblocksEventHelper::simulateActionSetTicketOrg($params, $dict, 'ticket_id');
				break;
				
			case 'set_owner':
				return DevblocksEventHelper::simulateActionSetTicketOwner($params, $dict, 'ticket_id');
				break;
				
			case 'set_reopen_date':
				DevblocksEventHelper::runActionSetDate('ticket_reopen_date', $params, $dict);
				$out = sprintf(">>> Setting ticket reopen date to:\n".
					"%s (%d)\n",
					date('D M d Y h:ia', $dict->ticket_reopen_date),
					$dict->ticket_reopen_date
				);
				return $out;
				break;
				
			case 'set_spam_training':
				$out = sprintf(">>> Setting spam training:\n".
					"%s\n",
					$params['value'] == 'N' ? 'Not Spam' : 'Spam'
				);
				return $out;
				break;
				
			case 'set_status':
				$out = sprintf(">>> Setting status to:\n%s\n",
					$params['status']
				);
				return $out;
				break;
				
			case 'set_subject':
				$out = sprintf(">>> Setting subject to:\n%s\n",
					$params['value']
				);
				return $out;
				break;
				
			case 'move_to':
				$groups = DAO_Group::getAll();
				$buckets = DAO_Bucket::getAll();

				if(!isset($params['group_id']) || !isset($params['bucket_id']))
					return false;

				$group_id = $params['group_id'];
				$bucket_id = $params['bucket_id'];
				
				if(!isset($groups[$group_id]))
					return false;
				
				if($bucket_id && !isset($buckets[$bucket_id]))
					return false;
				
				$out = sprintf(">>> Moving to:\n%s: %s\n",
					$groups[$group_id]->name,
					$buckets[$bucket_id]->name
				);
				
				$dict->group_id = $to_group_id;
				$dict->ticket_bucket_id = $to_bucket_id;
				
				return $out;
				break;
			
			case 'set_links':
				return DevblocksEventHelper::simulateActionSetLinks($trigger, $params, $dict);
				break;
				
			default:
				if(preg_match('#set_cf_(.*?)_custom_([0-9]+)#', $token))
					return DevblocksEventHelper::simulateActionSetCustomField($token, $params, $dict);
				break;
		}
	}
	
	function runActionExtension($token, $trigger, $params, DevblocksDictionaryDelegate $dict) {
		@$ticket_id = $dict->ticket_id;
		@$message_id = $dict->ticket_latest_message_id;

		if(empty($message_id) || empty($ticket_id))
			return;
		
		switch($token) {
			case 'add_recipients':
				DevblocksEventHelper::runActionAddRecipients($params, $dict, 'ticket_id');
				break;
				
			case 'add_watchers':
				DevblocksEventHelper::runActionAddWatchers($params, $dict, 'ticket_id');
				break;
			
			case 'create_comment':
				DevblocksEventHelper::runActionCreateComment($params, $dict, 'ticket_id');
				break;
				
			case 'create_notification':
				DevblocksEventHelper::runActionCreateNotification($params, $dict, 'ticket_id');
				break;
				
			case 'create_task':
				DevblocksEventHelper::runActionCreateTask($params, $dict, 'ticket_id');
				break;

			case 'create_ticket':
				DevblocksEventHelper::runActionCreateTicket($params, $dict, 'ticket_id');
				break;

			case 'relay_email':
				DevblocksEventHelper::runActionRelayEmail(
					$params,
					$dict,
					CerberusContexts::CONTEXT_TICKET,
					$ticket_id,
					$dict->ticket_group_id,
					@intval($dict->ticket_bucket_id),
					$dict->ticket_latest_message_id,
					@intval($dict->ticket_owner_id),
					$dict->ticket_latest_message_sender_address,
					$dict->ticket_latest_message_sender_full_name,
					$dict->ticket_subject
				);
				break;
			
			case 'schedule_email_recipients':
				DevblocksEventHelper::runActionScheduleTicketReply($params, $dict, $ticket_id, $message_id);
				break;

			case 'set_importance':
				DevblocksEventHelper::runActionSetTicketImportance($params, $dict, 'ticket_id', 'ticket_importance');
				break;

			case 'send_email':
				DevblocksEventHelper::runActionSendEmail($params, $dict);
				break;
				
			case 'send_email_recipients':
				// Translate message tokens
				$tpl_builder = DevblocksPlatform::getTemplateBuilder();

				@$content = $tpl_builder->build($params['content'], $dict);
				@$format = $params['format'];
				@$html_template_id = $params['html_template_id'];
				
				$properties = array(
					'ticket_id' => $ticket_id,
					'message_id' => $message_id,
					'content' => $content,
					'content_format' => $format,
					'html_template_id' => $html_template_id,
					'worker_id' => 0, //$worker_id,
				);
				
				// Headers

				@$headers_list = DevblocksPlatform::parseCrlfString($tpl_builder->build($params['headers'], $dict));

				if(is_array($headers_list))
				foreach($headers_list as $header_line) {
					@list($header, $value) = explode(':', $header_line);
				
					if(!empty($header) && !empty($value))
						$properties['headers'][trim($header)] = trim($value);
				}

				// Options
				
				if(isset($params['is_autoreply']) && !empty($params['is_autoreply']))
					$properties['is_autoreply'] = true;
				
				// Send
				
				CerberusMail::sendTicketMessage($properties);
				break;
				
			case 'set_org':
				DevblocksEventHelper::runActionSetTicketOrg($params, $dict, 'ticket_id', 'ticket_org_');
				break;
				
			case 'set_owner':
				DevblocksEventHelper::runActionSetTicketOwner($params, $dict, 'ticket_id', 'ticket_owner_');
				break;
			
			case 'set_reopen_date':
				DevblocksEventHelper::runActionSetDate('ticket_reopen_date', $params, $dict);
				
				DAO_Ticket::update($ticket_id, array(
					DAO_Ticket::REOPEN_AT => intval($dict->ticket_reopen_date),
				));
				break;
			
			case 'set_spam_training':
				@$to_training = $params['value'];
				@$current_training = $dict->ticket_spam_training;

				if($to_training == $current_training)
					break;
					
				switch($to_training) {
					case 'S':
						CerberusBayes::markTicketAsSpam($ticket_id);
						$dict->ticket_spam_training = $to_training;
						break;
					case 'N':
						CerberusBayes::markTicketAsNotSpam($ticket_id);
						$dict->ticket_spam_training = $to_training;
						break;
				}
				break;
				
			case 'set_status':
				@$to_status = $params['status'];
				@$current_status = $dict->ticket_status;
				
				if($to_status == $current_status)
					break;
					
				// Status
				switch($to_status) {
					case 'open':
						$fields = array(
							DAO_Ticket::IS_WAITING => 0,
							DAO_Ticket::IS_CLOSED => 0,
							DAO_Ticket::IS_DELETED => 0,
						);
						break;
					case 'waiting':
						$fields = array(
							DAO_Ticket::IS_WAITING => 1,
							DAO_Ticket::IS_CLOSED => 0,
							DAO_Ticket::IS_DELETED => 0,
						);
						break;
					case 'closed':
						$fields = array(
							DAO_Ticket::IS_WAITING => 0,
							DAO_Ticket::IS_CLOSED => 1,
							DAO_Ticket::IS_DELETED => 0,
						);
						break;
					case 'deleted':
						$fields = array(
							DAO_Ticket::IS_WAITING => 0,
							DAO_Ticket::IS_CLOSED => 1,
							DAO_Ticket::IS_DELETED => 1,
						);
						break;
					default:
						$fields = array();
						break;
				}
				if(!empty($fields)) {
					DAO_Ticket::update($ticket_id, $fields);
					$dict->ticket_status = $to_status;
				}
				break;
				
			case 'set_subject':
				// Translate message tokens
				@$value = $params['value'];
				
				$builder = DevblocksPlatform::getTemplateBuilder();
				$value = $builder->build($value, $dict);
				
				DAO_Ticket::update($ticket_id,array(
					DAO_Ticket::SUBJECT => $value,
				));
				$dict->ticket_subject = $value;
				break;
				
			case 'move_to':
				@$to_group_id = intval($params['group_id']);
				@$current_group_id = intval($dict->group_id);
				
				@$to_bucket_id = intval($params['bucket_id']);
				@$current_bucket_id = intval($dict->ticket_bucket_id);

				$groups = DAO_Group::getAll();
				$buckets = DAO_Bucket::getAll();
				
				// Don't trigger a move event into the same group+bucket.
				if(
					($to_group_id == $current_group_id)
					&& ($to_bucket_id == $current_bucket_id)
					)
					break;
				
				// Don't move into non-existent groups
				if(empty($to_group_id) || !isset($groups[$to_group_id]))
					break;
				
				// If the bucket doesn't exist, use the group's default bucket.
				if(empty($to_bucket_id) || !isset($buckets[$to_bucket_id])) {
					$to_group = $groups[$to_group_id]; /* @var $to_group Model_Group */
					$to_bucket = $to_group->getDefaultBucket();
					$to_bucket_id = $to_bucket->id;
				}
				
				// Move
				DAO_Ticket::update($ticket_id, array(
					DAO_Ticket::GROUP_ID => $to_group_id,
					DAO_Ticket::BUCKET_ID => $to_bucket_id,
				));
				
				$dict->group_id = $to_group_id;
				$dict->ticket_bucket_id = $to_bucket_id;
				break;
			
			case 'set_links':
				DevblocksEventHelper::runActionSetLinks($trigger, $params, $dict);
				break;
				
			default:
				if(preg_match('#set_cf_(.*?)_custom_([0-9]+)#', $token))
					return DevblocksEventHelper::runActionSetCustomField($token, $params, $dict);
				break;
		}
	}
};
