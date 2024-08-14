<#include "procedures.java.ftl">
@Mod.EventBusSubscriber public class ${name}Procedure {
    private static LivingDamageEvent _event;
	@SubscribeEvent public static void onLivingDamage(LivingDamageEvent event) {
        _event = event;
		<#assign dependenciesCode><#compress>
			<@procedureDependenciesCode dependencies, {
			"x": "event.getEntity().getX()",
			"y": "event.getEntity().getY()",
			"z": "event.getEntity().getZ()",
			"world": "event.getEntity().level()",
			"entity": "event.getEntity()",
			"sourceentity": "event.getSource().getEntity()",
			"finaldamage": "event.getAmount()",
			"damagesource": "event.getSource()",
			"event": "event"
			}/>
		</#compress></#assign>
		execute(event<#if dependenciesCode?has_content>,</#if>${dependenciesCode});
	}