<#include "mcitems.ftl">
GameTestHelper.spawnItem(${mappedMCItemToItemStackCode(input$itemstack, 1)}, world.getBlockState(${toBlockPos(input$x,input$y,input$z)}));