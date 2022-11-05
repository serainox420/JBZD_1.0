.class Lcom/mdotm/android/view/MdotMInterstitialImageView$4;
.super Ljava/lang/Thread;
.source "MdotMInterstitialImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMInterstitialImageView;->clicked(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

.field private final synthetic val$clickedUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMInterstitialImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iput-object p2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    .line 538
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/view/MdotMInterstitialImageView$4;)Lcom/mdotm/android/view/MdotMInterstitialImageView;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 542
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$3(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->adClicked()V

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launch type is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$9(Lcom/mdotm/android/view/MdotMInterstitialImageView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$9(Lcom/mdotm/android/view/MdotMInterstitialImageView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 552
    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 551
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 553
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 557
    :try_start_1
    iget-object v1, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-virtual {v1}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 566
    :goto_1
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$3(Lcom/mdotm/android/view/MdotMInterstitialImageView;)Lcom/mdotm/android/listener/MdotMAdActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mdotm/android/listener/MdotMAdActionListener;->leaveApplication()V

    .line 567
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMInterstitialImageView;->access$1(Lcom/mdotm/android/view/MdotMInterstitialImageView;)V

    .line 580
    :goto_2
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 559
    :catch_1
    move-exception v0

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not open browser on ad click to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->this$0:Lcom/mdotm/android/view/MdotMInterstitialImageView;

    iget-object v0, v0, Lcom/mdotm/android/view/MdotMInterstitialImageView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mdotm/android/view/MdotMInterstitialImageView$4$1;

    iget-object v2, p0, Lcom/mdotm/android/view/MdotMInterstitialImageView$4;->val$clickedUrl:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/mdotm/android/view/MdotMInterstitialImageView$4$1;-><init>(Lcom/mdotm/android/view/MdotMInterstitialImageView$4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
