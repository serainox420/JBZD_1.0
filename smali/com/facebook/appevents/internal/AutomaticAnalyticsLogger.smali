.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivateAppEvent()V
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    .line 47
    const-string v3, "context"

    invoke-static {v0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    if-eqz v2, :cond_0

    .line 49
    instance-of v2, v0, Landroid/app/Application;

    if-eqz v2, :cond_1

    .line 50
    check-cast v0, Landroid/app/Application;

    invoke-static {v0, v1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 7

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 70
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 72
    const-string v2, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 73
    const-string v2, "fb_aa_time_spent_on_view"

    long-to-double v4, p1

    invoke-virtual {v0, v2, v4, v5, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 76
    :cond_0
    return-void
.end method
