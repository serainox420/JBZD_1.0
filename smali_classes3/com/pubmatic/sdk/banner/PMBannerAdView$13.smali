.class synthetic Lcom/pubmatic/sdk/banner/PMBannerAdView$13;
.super Ljava/lang/Object;
.source "PMBannerAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/banner/PMBannerAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3357
    invoke-static {}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->values()[Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->MOCEAN:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    :goto_0
    :try_start_1
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I

    sget-object v1, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->PUBMATIC:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    .line 2710
    :goto_1
    invoke-static {}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->values()[Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    :try_start_2
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    :goto_2
    :try_start_3
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    :goto_3
    :try_start_4
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->TopLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    :goto_4
    :try_start_5
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomLeft:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    :goto_5
    :try_start_6
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomCenter:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->BottomRight:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    :goto_7
    :try_start_8
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$CustomClosePosition:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->Center:Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$CustomClosePosition;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    .line 2144
    :goto_8
    invoke-static {}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->values()[Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    :try_start_9
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->Portrait:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->Landscape:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    :goto_a
    :try_start_b
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$ForceOrientation:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->None:Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$ForceOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    .line 1109
    :goto_b
    invoke-static {}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->values()[Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    :try_start_c
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Inline:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    :goto_c
    :try_start_d
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$PlacementType:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->Interstitial:Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$PlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    .line 1033
    :goto_d
    invoke-static {}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->values()[Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    :try_start_e
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Loading:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    :goto_e
    :try_start_f
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Default:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    :goto_f
    :try_start_10
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Hidden:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    :goto_10
    :try_start_11
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Expanded:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    :goto_11
    :try_start_12
    sget-object v0, Lcom/pubmatic/sdk/banner/PMBannerAdView$13;->$SwitchMap$com$pubmatic$sdk$banner$mraid$Consts$State:[I

    sget-object v1, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->Resized:Lcom/pubmatic/sdk/banner/mraid/Consts$State;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/banner/mraid/Consts$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    :goto_12
    return-void

    :catch_0
    move-exception v0

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    .line 1109
    :catch_5
    move-exception v0

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_c

    .line 2144
    :catch_7
    move-exception v0

    goto :goto_b

    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto/16 :goto_9

    .line 2710
    :catch_a
    move-exception v0

    goto/16 :goto_8

    :catch_b
    move-exception v0

    goto/16 :goto_7

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_2

    .line 3357
    :catch_11
    move-exception v0

    goto/16 :goto_1

    :catch_12
    move-exception v0

    goto/16 :goto_0
.end method
