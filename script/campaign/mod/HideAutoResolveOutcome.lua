-- Kay's Hide AutoResolve Outcome for WH3

-- Credit to VARIANVS for creating the original: Robcore's Auto Resolve Fix for TW:WH2
-- Credit Ares106 for letting me use his code from the successor: Ares's remove Auto-resolve Outcome

function setOutcomeInvisible()
    -- gets UI Component by means of the uicomponent tree
    local autoresolve_outcome = find_uicomponent(core:get_ui_root(), "popup_pre_battle", "mid", "battle_deployment",
        "regular_deployment", "list", "autoresolve_outcome")

    -- if it is actually an uicomponent we set it invisible with the provided CA lua method
    if is_uicomponent(autoresolve_outcome) then
        autoresolve_outcome:SetVisible(false)
    end
end

-- Listener fires every time a Pre Battle popup renders and runs above function
core:add_listener(
    "PreBattleScreen",
    "PanelOpenedCampaign",
    function(context)
        return context.string == "popup_pre_battle"
    end,
    setOutcomeInvisible,
    true
)
