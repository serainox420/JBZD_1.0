.class final Lcom/madsdk/AppInfo$1;
.super Ljava/lang/Thread;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AppInfo;->request(Landroid/content/Context;Lcom/madsdk/AppInfo$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/madsdk/AppInfo$Listener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/madsdk/AppInfo$Listener;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/madsdk/AppInfo$1;->val$listener:Lcom/madsdk/AppInfo$Listener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lcom/madsdk/AppInfo;

    invoke-direct {v0}, Lcom/madsdk/AppInfo;-><init>()V

    invoke-static {v0}, Lcom/madsdk/AppInfo;->access$002(Lcom/madsdk/AppInfo;)Lcom/madsdk/AppInfo;

    .line 53
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$102(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/madsdk/AppInfo;->access$300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$202(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 57
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/madsdk/AppInfo;->access$402(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$502(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/madsdk/AppInfo;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$602(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$702(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/madsdk/AppInfo;->access$900(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$802(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/madsdk/AppInfo$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/madsdk/AppInfo;->access$1100(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/madsdk/AppInfo;->access$1002(Lcom/madsdk/AppInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/madsdk/AppInfo$1;->val$listener:Lcom/madsdk/AppInfo$Listener;

    invoke-static {}, Lcom/madsdk/AppInfo;->access$000()Lcom/madsdk/AppInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/madsdk/AppInfo$Listener;->onAppInfoLoaded(Lcom/madsdk/AppInfo;)V

    .line 64
    return-void
.end method
