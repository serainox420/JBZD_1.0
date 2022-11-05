.class Lpl/jbzd/app/view/main/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/jbzd/app/view/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpl/jbzd/app/view/main/MainActivity;


# direct methods
.method constructor <init>(Lpl/jbzd/app/view/main/MainActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lpl/jbzd/app/view/main/MainActivity$1;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registrationComplete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/google/firebase/messaging/a;->a()Lcom/google/firebase/messaging/a;

    move-result-object v0

    const-string v1, "global"

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/a;->a(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lpl/jbzd/app/view/main/MainActivity$1;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v0}, Lpl/jbzd/app/view/main/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lpl/jbzd/app/view/main/MainActivity$1;->a:Lpl/jbzd/app/view/main/MainActivity;

    invoke-virtual {v1}, Lpl/jbzd/app/view/main/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "firebase_token"

    const/4 v2, 0x0

    .line 146
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lpl/jbzd/api/ApiClient;->getApiService()Lpl/jbzd/api/ApiService;

    move-result-object v1

    const-string v2, "android"

    invoke-interface {v1, v2, v0}, Lpl/jbzd/api/ApiService;->token_create(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lpl/jbzd/api/callback/EmptyApiCallback;

    invoke-direct {v1}, Lpl/jbzd/api/callback/EmptyApiCallback;-><init>()V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 157
    :cond_0
    return-void
.end method
