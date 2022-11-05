.class public Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;
.super Lcom/openx/core/sdk/OXMBaseManager;
.source "OXMPreferencesImpl.java"

# interfaces
.implements Lcom/openx/common/deviceData/listeners/PreferenceListener;


# static fields
.field private static final AD_TRUTH_EXPIRY_PERIOD:J = 0x5265c00L

.field private static final PREF_AD_TRUTH:Ljava/lang/String; = "openx_adtruth"

.field private static final PREF_AD_TRUTH_TIMESTAMP:Ljava/lang/String; = "openx_adtruth_timestamp"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/openx/core/sdk/OXMBaseManager;-><init>()V

    return-void
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/openx/core/sdk/OXMBaseManager;->init(Landroid/content/Context;)V

    .line 27
    invoke-super {p0}, Lcom/openx/core/sdk/OXMBaseManager;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 31
    :cond_0
    return-void
.end method

.method public loadAdTruthValue()Lcom/openx/common/deviceData/managers/OXMPreference;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 45
    const-string v2, "openx_adtruth"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "openx_adtruth_timestamp"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 48
    new-instance v1, Lcom/openx/common/deviceData/managers/OXMPreference;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    :cond_0
    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/openx/common/deviceData/managers/OXMPreference;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    .line 51
    :goto_1
    return-object v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :cond_2
    new-instance v1, Lcom/openx/common/deviceData/managers/OXMPreference;

    invoke-direct {v1, v3, v0}, Lcom/openx/common/deviceData/managers/OXMPreference;-><init>(Ljava/lang/String;Z)V

    move-object v0, v1

    goto :goto_1
.end method

.method public saveAdTruthValue(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;->loadAdTruthValue()Lcom/openx/common/deviceData/managers/OXMPreference;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/openx/common/deviceData/managers/OXMPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 61
    if-nez v4, :cond_4

    invoke-virtual {v2}, Lcom/openx/common/deviceData/managers/OXMPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 62
    :goto_0
    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/openx/common/deviceData/managers/OXMPreference;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    move v2, v1

    .line 63
    :goto_1
    if-eqz p2, :cond_6

    if-nez v4, :cond_1

    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    .line 64
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 66
    invoke-direct {p0}, Lcom/openx/common/deviceData/managers/OXMPreferencesImpl;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    const-string v1, "openx_adtruth"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v1, "openx_adtruth_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    :cond_3
    return-void

    :cond_4
    move v3, v0

    .line 61
    goto :goto_0

    :cond_5
    move v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_6
    if-nez v4, :cond_7

    if-nez v3, :cond_2

    :cond_7
    move v0, v1

    goto :goto_2
.end method
