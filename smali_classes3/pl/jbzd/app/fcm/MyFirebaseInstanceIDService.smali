.class public Lpl/jbzd/app/fcm/MyFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "MyFirebaseInstanceIDService.java"


# static fields
.field public static final REGISTRATION_COMPLETE:Ljava/lang/String; = "registrationComplete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method private storeRegIdInPref(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseInstanceIDService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lpl/jbzd/app/fcm/MyFirebaseInstanceIDService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firebase_token"

    .line 43
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onTokenRefresh()V

    .line 18
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->a()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->d()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-direct {p0, v0}, Lpl/jbzd/app/fcm/MyFirebaseInstanceIDService;->storeRegIdInPref(Ljava/lang/String;)V

    .line 27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "registrationComplete"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v2, "token"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-static {p0}, Landroid/support/v4/content/l;->a(Landroid/content/Context;)Landroid/support/v4/content/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/l;->a(Landroid/content/Intent;)Z

    .line 30
    return-void
.end method
