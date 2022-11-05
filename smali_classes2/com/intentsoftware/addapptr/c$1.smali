.class Lcom/intentsoftware/addapptr/c$1;
.super Landroid/os/AsyncTask;
.source "AdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intentsoftware/addapptr/c;->obtainEncryptedAdvertisingId(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intentsoftware/addapptr/c;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/intentsoftware/addapptr/c;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/intentsoftware/addapptr/c$1;->this$0:Lcom/intentsoftware/addapptr/c;

    iput-object p2, p0, Lcom/intentsoftware/addapptr/c$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/c$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/intentsoftware/addapptr/c$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 157
    if-nez v0, :cond_1

    .line 158
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/c;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$1;->this$0:Lcom/intentsoftware/addapptr/c;

    const-string v1, "Cannot obtain Google Advertising ID info - null was returned!"

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-object v2

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/c/a;->encode_idfa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/intentsoftware/addapptr/b/a;->setAdvertisingId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/intentsoftware/addapptr/c$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$1;->this$0:Lcom/intentsoftware/addapptr/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c;->access$102(Lcom/intentsoftware/addapptr/c;Z)Z

    .line 177
    invoke-static {}, Lcom/intentsoftware/addapptr/c;->access$200()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/intentsoftware/addapptr/c$1;->this$0:Lcom/intentsoftware/addapptr/c;

    invoke-static {}, Lcom/intentsoftware/addapptr/c;->access$200()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/intentsoftware/addapptr/c;->access$300(Lcom/intentsoftware/addapptr/c;Landroid/app/Activity;)V

    .line 180
    :cond_0
    return-void
.end method
