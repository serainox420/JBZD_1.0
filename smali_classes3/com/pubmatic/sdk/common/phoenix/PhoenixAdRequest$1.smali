.class synthetic Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;
.super Ljava/lang/Object;
.source "PhoenixAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$AWT_OPTION:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

.field static final synthetic $SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$SECURE_FLAG:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 281
    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->values()[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$SECURE_FLAG:[I

    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$SECURE_FLAG:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$SECURE_FLAG:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->NON_SECURE:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$SECURE_FLAG;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 270
    :goto_1
    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->values()[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$AWT_OPTION:[I

    :try_start_2
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$AWT_OPTION:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->WRAPPED_IN_IFRAME:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$AWT_OPTION:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->WRAPPED_IN_JS:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$AWT_OPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 157
    :goto_3
    invoke-static {}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->values()[Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

    :try_start_4
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->BELOW_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$1;->$SwitchMap$com$pubmatic$sdk$common$phoenix$PhoenixAdRequest$PM_AD_POSITION:[I

    sget-object v1, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->PARTIALLY_ABOVE_FOLD:Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/phoenix/PhoenixAdRequest$PM_AD_POSITION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 270
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    .line 281
    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
