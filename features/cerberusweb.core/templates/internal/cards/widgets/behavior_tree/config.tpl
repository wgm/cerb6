{$config_uniqid = uniqid('widgetConfig_')}
<div id="cardWidgetConfig{$config_uniqid}" style="margin-top:10px;">
    <fieldset class="peek">
        <legend>Display this behavior:</legend>

        <b><a href="javascript:;" class="cerb-chooser" data-context="{CerberusContexts::CONTEXT_BEHAVIOR}" data-single="true">ID</a>:</b>

        <div style="margin-left:10px;">
            <input type="text" name="params[behavior_id]" value="{$widget->extension_params.behavior_id}" class="placeholders" style="width:95%;padding:5px;border-radius:5px;" autocomplete="off" spellcheck="false">
        </div>
    </fieldset>
</div>

<script type="text/javascript">
$(function() {
    var $config = $('#cardWidgetConfig{$config_uniqid}');
    var $input_behavior_id = $config.find('input[name="params[behavior_id]"]');

    $config.find('.cerb-chooser').cerbChooserTrigger()
        .on('cerb-chooser-selected', function(e) {
            {literal}$input_behavior_id.val(e.values[0] + '{# ' + e.labels[0] + ' #}');{/literal}
        })
    ;
});
</script>