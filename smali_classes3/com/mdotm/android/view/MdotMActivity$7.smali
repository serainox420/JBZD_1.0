.class Lcom/mdotm/android/view/MdotMActivity$7;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->onOpenUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$7;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMActivity$7;->val$url:Ljava/lang/String;

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 794
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 795
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$7;->val$url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 794
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 796
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$7;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 806
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
