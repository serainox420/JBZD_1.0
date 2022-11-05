.class Lcom/mdotm/android/view/MdotMActivity$5;
.super Ljava/lang/Thread;
.source "MdotMActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->clicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMActivity$5;->val$clickedUrl:Ljava/lang/String;

    .line 602
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMActivity$5;)Lcom/mdotm/android/view/MdotMActivity;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->adClicked()V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMActivity;->access$5(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$5(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/model/MdotMAdResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getLaunchType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 611
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$5;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 610
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 612
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mdotm/android/view/MdotMActivity;->videoAdSelectionInProgress:Z

    .line 626
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$1(Lcom/mdotm/android/view/MdotMActivity;)Lcom/mdotm/android/listener/InterstitialActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/InterstitialActionListener;->onLeave()V

    .line 641
    :cond_0
    :goto_1
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$5;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMActivity$5$1;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMActivity$5;->val$clickedUrl:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/MdotMActivity$5$1;-><init>(Lcom/mdotm/android/view/MdotMActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
