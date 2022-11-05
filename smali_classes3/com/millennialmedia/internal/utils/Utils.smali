.class public Lcom/millennialmedia/internal/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/utils/Utils$VibrateListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/millennialmedia/internal/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-byte v4, p0, v0

    .line 48
    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static injectIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_1

    .line 58
    sget-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    const-string v1, "Unable to inject value, specified key is null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static isActivityContext(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    if-nez p0, :cond_0

    move v0, v1

    .line 270
    :goto_0
    return v0

    .line 257
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move v0, v2

    .line 258
    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 261
    :cond_2
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 263
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 265
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    move v0, v2

    .line 266
    goto :goto_0

    :cond_3
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 229
    if-nez p0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPackageAvailable(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    :goto_0
    return v0

    .line 216
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    const/4 v0, 0x1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSchemeAvailable(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 198
    :cond_1
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    :cond_2
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static logAndFireMMException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/millennialmedia/MMException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0, p1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Lcom/millennialmedia/MMException;

    invoke-direct {v0, p1}, Lcom/millennialmedia/MMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static putIfNotNull(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 284
    if-eqz p2, :cond_0

    .line 285
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/millennialmedia/internal/utils/Utils$1;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/internal/utils/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public static splitCommaSeparateString(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 80
    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 85
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 98
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 160
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 161
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 165
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start activity for intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startActivityFromUrl(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    const-string v1, "Unable to start activity for null url"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .line 187
    :goto_0
    return v0

    .line 185
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/millennialmedia/internal/utils/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method

.method public static trimStringNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vibrate([JILcom/millennialmedia/internal/utils/Utils$VibrateListener;)V
    .locals 6

    .prologue
    .line 115
    if-nez p2, :cond_0

    .line 116
    sget-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    const-string v1, "Unable to call vibrate, provided listener cannot be null"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->hasVibratePermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Lcom/millennialmedia/internal/utils/Utils;->a:Ljava/lang/String;

    const-string v1, "Unable to call vibrate, permission is not available"

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lcom/millennialmedia/internal/utils/Utils$VibrateListener;->onError()V

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/millennialmedia/internal/utils/EnvironmentUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 131
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 132
    invoke-interface {p2}, Lcom/millennialmedia/internal/utils/Utils$VibrateListener;->onStarted()V

    .line 134
    const-wide/16 v2, 0x0

    .line 135
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 136
    aget-wide v4, p0, v0

    add-long/2addr v2, v4

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Lcom/millennialmedia/internal/utils/Utils$2;

    invoke-direct {v0, p2}, Lcom/millennialmedia/internal/utils/Utils$2;-><init>(Lcom/millennialmedia/internal/utils/Utils$VibrateListener;)V

    invoke-static {v0, v2, v3}, Lcom/millennialmedia/internal/utils/ThreadUtils;->runOnWorkerThreadDelayed(Ljava/lang/Runnable;J)Lcom/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable;

    goto :goto_0
.end method
