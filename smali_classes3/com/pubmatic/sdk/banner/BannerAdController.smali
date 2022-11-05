.class public Lcom/pubmatic/sdk/banner/BannerAdController;
.super Ljava/lang/Object;
.source "BannerAdController.java"


# instance fields
.field protected mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

.field protected mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

.field protected mContext:Landroid/content/Context;

.field protected mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;


# direct methods
.method public constructor <init>(Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 18
    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    .line 22
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    .line 23
    iput-object p2, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mContext:Landroid/content/Context;

    .line 24
    invoke-direct {p0, p3}, Lcom/pubmatic/sdk/banner/BannerAdController;->createDefaultAdRequest(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method private createDefaultAdRequest(Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    .line 33
    .line 38
    :try_start_0
    sget-object v0, Lcom/pubmatic/sdk/banner/BannerAdController$1;->$SwitchMap$com$pubmatic$sdk$common$CommonConstants$CHANNEL:[I

    iget-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mChannel:Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;

    invoke-virtual {v1}, Lcom/pubmatic/sdk/common/CommonConstants$CHANNEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/BannerAdController;->createRRFormatter()V

    .line 86
    :goto_1
    return-void

    .line 40
    :pswitch_0
    const-string v0, "com.pubmatic.sdk.banner.mocean.MoceanBannerAdRequest"

    .line 41
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 42
    const-string v0, "createMoceanBannerAdRequest"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 43
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/AdRequest;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 45
    const-string v0, "setAttributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 50
    :pswitch_1
    :try_start_1
    const-string v0, "com.pubmatic.sdk.banner.pubmatic.PubMaticBannerAdRequest"

    .line 51
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    const-string v0, "createPubMaticBannerAdRequest"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/AdRequest;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 56
    const-string v0, "setAttributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 60
    :pswitch_2
    :try_start_2
    const-string v0, "com.pubmatic.sdk.banner.phoenix.PhoenixBannerAdRequest"

    .line 61
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 62
    const-string v0, "createPhoenixBannerAdRequest"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 63
    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/AdRequest;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 65
    const-string v0, "setAttributes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_1

    .line 81
    :catch_3
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_1

    .line 83
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private createRRFormatter()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->getFormatter()Ljava/lang/String;

    move-result-object v0

    .line 105
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pubmatic/sdk/common/RRFormatter;

    iput-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 111
    :catch_2
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 113
    :catch_3
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public applyAttributeSet(Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public checkMandatoryParams()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/AdRequest;->checkMandatoryParams()Z

    move-result v0

    goto :goto_0
.end method

.method public getAdRequest()Lcom/pubmatic/sdk/common/AdRequest;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    return-object v0
.end method

.method public getRRFormatter()Lcom/pubmatic/sdk/common/RRFormatter;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mRRFormatter:Lcom/pubmatic/sdk/common/RRFormatter;

    return-object v0
.end method

.method public setAdRequest(Lcom/pubmatic/sdk/common/AdRequest;)V
    .locals 2

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdRequest object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/pubmatic/sdk/banner/BannerAdController;->mAdRequest:Lcom/pubmatic/sdk/common/AdRequest;

    .line 95
    invoke-direct {p0}, Lcom/pubmatic/sdk/banner/BannerAdController;->createRRFormatter()V

    .line 96
    return-void
.end method
