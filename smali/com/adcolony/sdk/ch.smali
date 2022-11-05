.class Lcom/adcolony/sdk/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "adColonyPubServices"

.field static final b:Ljava/lang/String; = "receivedInForeground"

.field static final c:Ljava/lang/String; = "gcm_defaultSenderId"

.field private static final d:Ljava/lang/String; = "savedPushMsgs.ymf"

.field private static final e:Ljava/lang/String; = "YvolverPushNotMgr"

.field private static final f:I = 0x2328

.field private static final g:I = 0xa

.field private static final n:Ljava/lang/String; = "adcOpenUrl"

.field private static final o:Ljava/lang/String; = "adcOpenCatalog"


# instance fields
.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/adcolony/sdk/ch;->i:I

    .line 49
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 51
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ch;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 52
    new-instance v0, Lcom/adcolony/sdk/bu;

    invoke-direct {v0}, Lcom/adcolony/sdk/bu;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/ch;->m:Lcom/adcolony/sdk/bu;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/ch;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 389
    if-eqz p1, :cond_0

    .line 390
    new-instance v0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;-><init>()V

    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(J)V

    .line 395
    const-string v1, "adColonyPubServices"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->b(Z)V

    .line 399
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Z)V

    .line 401
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aI()Lcom/adcolony/sdk/ch;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ch;->b(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    .line 404
    :cond_0
    return-void
.end method

.method private c(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->m:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/ch$1;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ch$1;-><init>(Lcom/adcolony/sdk/ch;Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 348
    return-void
.end method

.method private j()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 498
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 500
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 501
    if-eqz v2, :cond_1

    .line 502
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 503
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x2328

    invoke-virtual {v1, v3, v2, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 511
    :goto_0
    return v0

    .line 506
    :cond_0
    const-string v1, "PushManager"

    const-string v2, "This device is not supported with Google Play Services."

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 511
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 124
    const-string v0, "YvolverPushNotMgr"

    const-string v1, "unregisterForPushNotifications"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    iput-object v3, p0, Lcom/adcolony/sdk/ch;->h:Ljava/lang/String;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/adcolony/sdk/ch;->i:I

    .line 127
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 128
    iput-object v3, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    .line 129
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 197
    :try_start_0
    const-string v0, "YvolverPushNotMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gcm notification bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    const/4 v5, 0x0

    .line 200
    const/4 v4, 0x0

    .line 201
    const/4 v3, 0x0

    .line 202
    const/4 v2, 0x0

    .line 203
    const/4 v0, 0x0

    .line 204
    const/4 v1, -0x1

    .line 208
    const-string v6, "receivedInForeground"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/ch;->b(Landroid/os/Bundle;)V

    .line 210
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 213
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v6

    invoke-virtual {v6}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v7

    .line 214
    invoke-static {v7}, Landroid/support/v4/app/as;->a(Landroid/content/Context;)Landroid/support/v4/app/as;

    move-result-object v8

    .line 217
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 219
    if-eqz v6, :cond_9

    .line 221
    const-string v0, "title"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 222
    const-string v0, "body"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    const-string v0, "color"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v0, "sound"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v0, "icon"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v0

    .line 229
    :goto_0
    const/4 v0, -0x1

    .line 230
    if-eqz v3, :cond_8

    .line 231
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 235
    :goto_1
    const/4 v0, 0x0

    .line 237
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 238
    if-eqz v9, :cond_7

    .line 239
    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v10, "raw"

    invoke-virtual {v0, v4, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 242
    :cond_0
    if-eqz v2, :cond_7

    .line 243
    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "drawable"

    invoke-virtual {v1, v2, v4, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v2, v0

    move v0, v1

    .line 247
    :goto_2
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move v1, v0

    .line 251
    :goto_3
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/adcolony/sdk/MessagingLaunchActivity;

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 252
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    const/high16 v4, 0x20000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    const/high16 v4, 0x8000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 255
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 256
    const/4 v4, 0x0

    const/high16 v10, 0x8000000

    .line 257
    invoke-static {v7, v4, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 261
    const/4 v0, 0x1

    .line 263
    new-instance v10, Landroid/support/v4/app/aj$d;

    invoke-direct {v10, v7}, Landroid/support/v4/app/aj$d;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    .line 264
    invoke-virtual {v10, v7}, Landroid/support/v4/app/aj$d;->c(Z)Landroid/support/v4/app/aj$d;

    move-result-object v7

    .line 265
    invoke-virtual {v7, v1}, Landroid/support/v4/app/aj$d;->a(I)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 266
    invoke-virtual {v1, v4}, Landroid/support/v4/app/aj$d;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/aj$d;

    move-result-object v1

    .line 268
    if-eqz v6, :cond_1

    .line 269
    invoke-virtual {v1, v6}, Landroid/support/v4/app/aj$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    .line 272
    :cond_1
    if-eqz v5, :cond_2

    .line 273
    new-instance v4, Landroid/support/v4/app/aj$c;

    invoke-direct {v4}, Landroid/support/v4/app/aj$c;-><init>()V

    .line 274
    invoke-virtual {v4, v5}, Landroid/support/v4/app/aj$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$c;

    move-result-object v4

    .line 273
    invoke-virtual {v1, v4}, Landroid/support/v4/app/aj$d;->a(Landroid/support/v4/app/aj$q;)Landroid/support/v4/app/aj$d;

    move-result-object v4

    .line 275
    invoke-virtual {v4, v5}, Landroid/support/v4/app/aj$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/aj$d;

    .line 278
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v9, :cond_4

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.resource://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Landroid/support/v4/app/aj$d;->a(Landroid/net/Uri;)Landroid/support/v4/app/aj$d;

    .line 286
    :goto_4
    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    .line 287
    invoke-virtual {v1, v3}, Landroid/support/v4/app/aj$d;->c(I)Landroid/support/v4/app/aj$d;

    .line 295
    :goto_5
    invoke-virtual {v1, v0}, Landroid/support/v4/app/aj$d;->b(I)Landroid/support/v4/app/aj$d;

    .line 298
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aG()I

    move-result v0

    invoke-virtual {v1}, Landroid/support/v4/app/aj$d;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/support/v4/app/as;->a(ILandroid/app/Notification;)V

    .line 299
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->aH()V

    .line 313
    :goto_6
    return-void

    .line 249
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->al()I

    move-result v0

    move v1, v0

    goto/16 :goto_3

    .line 282
    :cond_4
    const/4 v0, 0x1

    goto :goto_4

    .line 289
    :cond_5
    const/4 v0, 0x1

    goto :goto_5

    .line 304
    :cond_6
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->k:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 306
    :catch_0
    move-exception v0

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Push Message but could not render it in the status bar: error Message ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    const-string v2, "YvolverPushNotMgr"

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Z)V

    goto :goto_6

    :cond_7
    move v2, v0

    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v3, v0

    goto/16 :goto_1

    :cond_9
    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v0

    goto/16 :goto_0
.end method

.method a(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->m:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/ch$2;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ch$2;-><init>(Lcom/adcolony/sdk/ch;Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 369
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 64
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 65
    if-eqz v3, :cond_7

    .line 67
    if-nez p1, :cond_6

    .line 68
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "gcm_defaultSenderId"

    const-string v5, "string"

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/bz;->l()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 74
    const/16 v5, 0x80

    .line 75
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 76
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v3, p0, Lcom/adcolony/sdk/ch;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    iget v3, p0, Lcom/adcolony/sdk/ch;->i:I

    if-gtz v3, :cond_1

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred when retrieving app-icon for the default icon in push notifications. Have you called AdColony.configure()?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_2
    if-nez v0, :cond_5

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->k()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/adcolony/sdk/AdColonyPubServicesPushRegIdIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void

    .line 87
    :cond_1
    if-nez p1, :cond_2

    if-eq v1, v2, :cond_4

    .line 90
    :cond_2
    if-eqz p1, :cond_3

    .line 91
    iput-object p1, p0, Lcom/adcolony/sdk/ch;->h:Ljava/lang/String;

    .line 96
    :goto_3
    invoke-direct {p0}, Lcom/adcolony/sdk/ch;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Google Play services is not available. It is required for AdColony Push Notifications."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 94
    :cond_3
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adcolony/sdk/ch;->h:Ljava/lang/String;

    goto :goto_3

    .line 103
    :cond_4
    new-instance v0, Lcom/adcolony/sdk/bx;

    invoke-direct {v0}, Lcom/adcolony/sdk/bx;-><init>()V

    goto :goto_2

    .line 115
    :cond_5
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bl;->a(Ljava/lang/Exception;)V

    .line 116
    throw v0

    .line 77
    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method a(Landroid/content/Intent;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 138
    .line 141
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 145
    new-instance v3, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-direct {v3}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;-><init>()V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(J)V

    .line 149
    const-string v4, "adColonyPubServices"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 150
    if-eqz v4, :cond_4

    .line 153
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->b(Z)V

    .line 154
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Ljava/lang/String;)V

    .line 155
    const-string v0, "receivedInForeground"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a(Z)V

    .line 159
    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0, v3}, Lcom/adcolony/sdk/ch;->b(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    .line 164
    :cond_0
    const-string v0, "YvolverPushNotMgr"

    const-string v2, "add pending notification"

    const/4 v4, 0x1

    invoke-static {v0, v2, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->j()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/ch;->b()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    .line 182
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/bz;->aB()Lcom/adcolony/sdk/bl;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/bl;->a(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    :cond_2
    :goto_2
    return v0

    .line 171
    :cond_3
    const/4 v0, 0x1

    :try_start_3
    const-string v2, "Pubservices is unavailable. Adding push message to pending queue."

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Lcom/adcolony/sdk/w;->a(ILjava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 174
    :cond_4
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {v3, v1}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->b(Z)V

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    const-string v4, "notification"

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v2

    const-string v4, "Unable to create push notification"

    sget-object v5, Lcom/adcolony/sdk/bn$b;->b:Lcom/adcolony/sdk/bn$b;

    const/4 v6, 0x0

    .line 178
    invoke-virtual {v2, v4, v5, v6, v1}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/String;Lcom/adcolony/sdk/bn$b;ZLjava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method b(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->m:Lcom/adcolony/sdk/bu;

    new-instance v1, Lcom/adcolony/sdk/ch$3;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/ch$3;-><init>(Lcom/adcolony/sdk/ch;Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bu;->a(Lcom/adcolony/sdk/bv;)V

    .line 386
    return-void
.end method

.method b()Z
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    .line 415
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    .line 416
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/ch;->c(Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v0

    .line 420
    const-string v1, "YvolverPushNotMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred when executing pending notification. ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 463
    invoke-virtual {p0}, Lcom/adcolony/sdk/ch;->f()Ljava/lang/String;

    .line 464
    iget-object v1, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    :cond_0
    const-string v1, "YvolverPushNotMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 466
    iput-object p1, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    .line 469
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 428
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ap()Lcom/adcolony/sdk/by;

    move-result-object v0

    new-instance v1, Lcom/adcolony/sdk/ch$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/ch$4;-><init>(Lcom/adcolony/sdk/ch;)V

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/by;->a(Lcom/adcolony/sdk/bv;)V

    .line 440
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->h:Ljava/lang/String;

    return-object v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/adcolony/sdk/ch;->i:I

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bz;->ai()Ljava/lang/String;

    move-result-object v0

    .line 476
    iput-object v0, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->l:Ljava/lang/String;

    return-object v0
.end method

.method g()V
    .locals 3

    .prologue
    .line 485
    const-string v0, "YvolverPushNotMgr"

    const-string v1, "onDestroy()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 488
    return-void
.end method

.method h()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 519
    const-string v0, "YvolverPushNotMgr"

    const-string v1, "loadPushesFromDisk"

    invoke-static {v0, v1, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 520
    const-string v0, "savedPushMsgs.ymf"

    .line 521
    invoke-static {v0}, Lcom/adcolony/sdk/co;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    const-string v1, "YvolverPushNotMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pushes saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 525
    const-string v1, "payload"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 526
    const-string v2, "meta"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/cg;

    .line 527
    const-string v4, "id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    const-string v4, "YvolverPushNotMgr"

    const-string v5, "load pending notification into list"

    invoke-static {v4, v5, v6}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 529
    iget-object v4, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v5, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    invoke-direct {v5, v1, v2, v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/cg;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_0
    return-void
.end method

.method i()V
    .locals 5

    .prologue
    .line 538
    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 540
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/adcolony/sdk/ch;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;

    .line 543
    const-string v2, "YvolverPushNotMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saving push to disk ->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 544
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 545
    const-string v3, "payload"

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v3, "meta"

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->a()Lcom/adcolony/sdk/cg;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v3, "id"

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyPubServicesPushNotification;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 551
    :catch_0
    move-exception v0

    .line 553
    const-string v1, "YvolverPushNotMgr"

    const-string v2, "Interrupted exception occurred while saving notifications from disk"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 550
    :cond_0
    :try_start_1
    const-string v0, "savedPushMsgs.ymf"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/co;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 556
    :cond_1
    return-void
.end method
