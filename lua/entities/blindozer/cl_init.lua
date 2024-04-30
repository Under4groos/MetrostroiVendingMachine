include("shared.lua")
        --JAM_APPLE--
    local Quantity_NA = '1'
    local Production_Data_NA = '1'
    --JAM_CHERRY--
    local Quantity_NV = '1'
    local Production_Data_NV = '1'
    --JAM_APRICOT--
    local Quantity_NO = '1'
    local Production_Data_NO = '1'
    --TARA_TESTO--
    local Quantity_TE = '1'
    local Production_Data_TE = '1'
    --TARA_MASO--
    local Quantity_MA = '1'
    local Production_Data_MA = '1'
    --TARA_OVOSHI--
    local Quantity_OV = '1'
    local Production_Data_OV = '1'


    --Если яблочный джем испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_NA <= '0' then
        Quantity_NA = '0'
    else
    end
    --Если вишневый джем испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_NV <= '0' then
        Quantity_NV = '0'
    else
    end
    --Если абрикосовый джем испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_NO <= '0' then
        Quantity_NO = '0'
    else
    end
    --Если тесто испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_TE <= '0' then
        Quantity_TE = '0'
    else
    end
    --Если мясо испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_MA <= '0' then
        Quantity_MA = '0'
    else
    end
    --Если овощи испортиться то его дата будет = 0, тоесть он автоматически снимится с позиции, все товары имеющие элемент Яблочный Джем, не будут показаны в интерфейсе--
    if Production_Data_OV <= '0' then
        Quantity_OV = '0'
    else
    end     




function frame1()

    surface.CreateFont("Fonts1",{font = "Trebuchet24",size = 25})
    local frame = vgui.Create("DFrame")
    frame:CenterHorizontal(0.2)
    frame:CenterVertical(0.1)
    frame:SetSize(1000, 820)
    frame:SetTitle("")
    frame:SetVisible(true)
    frame:SetDraggable(true)
    frame:MakePopup()
    frame.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color( 30, 30, 30, 255 ))
        draw.RoundedBox( 0, 15, 15, 970, 790, Color( 222, 222, 222, 255 ))
        draw.RoundedBox( 0, 15, 775, 970, 30, Color( 0, 0, 0, 255 ))
        draw.SimpleText( "E-MAIL: blindozer@blin.cum", "Fonts1", 25, 777, color_white )
    end

    local logo_blin = vgui.Create("DImage", frame)
    logo_blin:SetPos(10, 20)
    logo_blin:SetSize(650, 140)      
    logo_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/seend_blin.png")

    local button01 = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' then
        button01:SetPos( 710, 20)
        button01:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Button01.png")
        button01:SetSize( 250, 135 )
        button01.DoClick = function()
            frame3()
            frame:Close()
        end
    else
    end

--сытный блин--
    local masnoy_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1' and Quantity_MA >= '1' then
        masnoy_blin:SetPos(33, 170)
        masnoy_blin:SetSize(220, 280)      
        masnoy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--сладкий блин--
    local sladkiy_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' then 
        sladkiy_blin:SetPos(271, 170)
        sladkiy_blin:SetSize(220, 280)   
        sladkiy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--просто блин--
    local prosto_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' then
        prosto_blin:SetPos(509, 170)
        prosto_blin:SetSize(220, 280)      
        prosto_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--сырный блин--
    local sirniy_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1'  then
        sirniy_blin:SetPos(747, 170)
        sirniy_blin:SetSize(220, 280)      
        sirniy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--ветчина и сыр--
    local vetchina_i_sir_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1' and Quantity_MA >= '1' then
        vetchina_i_sir_blin:SetPos(33, 472)
        vetchina_i_sir_blin:SetSize(220, 280)      
        vetchina_i_sir_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--богатырь блин--
    local bogatir_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1' and Quantity_MA >= '1' then
        bogatir_blin:SetPos(271, 472)
        bogatir_blin:SetSize(220, 280)      
        bogatir_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--маргарита блин--
    local margarita_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1' then
        margarita_blin:SetPos(509, 472)
        margarita_blin:SetSize(220, 280)      
        margarita_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--овощной блин--
    local ovoshnoy_blin = vgui.Create("DImageButton", frame)
    if Quantity_TE >= '1' and Quantity_OV >= '1' then
        ovoshnoy_blin:SetPos(747, 472)
        ovoshnoy_blin:SetSize(220, 280)      
        ovoshnoy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end
end

function frame3()
    surface.CreateFont("Fonts1",{font = "Trebuchet24",size = 25})
    local frame3 = vgui.Create("DFrame")
    frame3:CenterHorizontal(0.2)
    frame3:CenterVertical(0.1)
    frame3:SetSize(1000, 820)
    frame3:SetTitle("")
    frame3:SetVisible(true)
    frame3:SetDraggable(true)
    frame3:MakePopup()
    frame3.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color( 30, 30, 30, 255 ))
        draw.RoundedBox( 0, 15, 15, 970, 790, Color( 222, 222, 222, 255 ))
        draw.RoundedBox( 0, 15, 775, 970, 30, Color( 0, 0, 0, 255 ))
        draw.SimpleText( "E-MAIL: blindozer@blin.cum", "Fonts1", 25, 777, color_white )
    end

    local logo_blin2 = vgui.Create("DImage", frame3)
    logo_blin2:SetPos(10, 20)
    logo_blin2:SetSize(650, 140)      
    logo_blin2:SetImage("materials/metrostroi_3demc/vending_machine/GUI/seend_blin.png")

    local button03 = vgui.Create("DImageButton", frame3)
    button03:SetPos( 710, 20)
    button03:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Button01.png")
    button03:SetSize( 250, 135 )
    button03.DoClick = function()
        frame1()
        frame3:Close()
    end



--Куриный блин--
    local kuriniy_blin = vgui.Create("DImageButton", frame3)
    if Quantity_TE >= '1' and Quantity_MA >= '1' and Quantity_OV >= '1' then
        kuriniy_blin:SetPos(33, 170)
        kuriniy_blin:SetSize(220, 280)      
        kuriniy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--Яблочный блин--
    local Yablochniy_blin = vgui.Create("DImageButton", frame3)
    if Quantity_TE >= '1' and Quantity_NA >= '1' then
        Yablochniy_blin:SetPos(271, 170)
        Yablochniy_blin:SetSize(220, 280)      
        Yablochniy_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--Пикник блин--
    local Picnik_blin = vgui.Create("DImageButton", frame3)
    if Quantity_TE >= '1' and Quantity_MA >= '1' and Quantity_OV >= '1' then
        Picnik_blin:SetPos(509, 170)
        Picnik_blin:SetSize(220, 280)      
        Picnik_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--Вишневый блин--
    local Cherry_blin = vgui.Create("DImageButton", frame3)
    if Quantity_TE >= '1' and Quantity_NV >= '1' then
        Cherry_blin:SetPos(747, 170)
        Cherry_blin:SetSize(220, 280)      
        Cherry_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end

--Абрикосовый блин--
    local Abricot_blin = vgui.Create("DImageButton", frame3)
    if Quantity_TE >= '1' and Quantity_NO >= '1' then
        Abricot_blin:SetPos(33, 472)
        Abricot_blin:SetSize(220, 280)      
        Abricot_blin:SetImage("materials/metrostroi_3demc/vending_machine/GUI/Sitniy_blin.png")
    else
    end
end

function frame2()
    local frame2 = vgui.Create("DFrame")
    frame2:CenterHorizontal(0.2)
    frame2:CenterVertical(0.1)
    frame2:SetSize(1000, 820)
    frame2:SetTitle("")
    frame2:SetVisible(true)
    frame2:SetDraggable(true)
    frame2:MakePopup()
    frame2.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color( 30, 30, 30, 255 ))
    end
    local image3 = vgui.Create("DImageButton", frame2)
    image3:SetPos(15, 15)
    image3:SetSize(970, 790)      
    image3:SetImage("materials/metrostroi_3demc/vending_machine/GUI/frame2.png")
    image3.DoClick = function()
        frame1()
        frame2:Close()
    end
end


net.Receive("GUIInterface", function()

    frame2()

end)

