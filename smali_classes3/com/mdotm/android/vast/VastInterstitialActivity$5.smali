.class Lcom/mdotm/android/vast/VastInterstitialActivity$5;
.super Ljava/lang/Object;
.source "VastInterstitialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/vast/VastInterstitialActivity;->decrementCounter(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

.field private final synthetic val$counterSize:Ljava/lang/String;

.field private final synthetic val$counterStroke:Ljava/lang/String;

.field private final synthetic val$counteroffset:Ljava/lang/String;

.field private final synthetic val$remainingTime:I

.field private final synthetic val$videoDuration:I


# direct methods
.method constructor <init>(Lcom/mdotm/android/vast/VastInterstitialActivity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iput p2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$remainingTime:I

    iput p3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$videoDuration:I

    iput-object p4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterSize:Ljava/lang/String;

    iput-object p5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterStroke:Ljava/lang/String;

    iput-object p6, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counteroffset:Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x5

    const/4 v7, -0x1

    const-wide/high16 v10, 0x4040000000000000L    # 32.0

    const/4 v8, 0x6

    .line 325
    iget-object v6, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    new-instance v0, Lcom/mdotm/android/view/MdotMDecrementCounterView;

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$remainingTime:I

    iget v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$videoDuration:I

    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterSize:Ljava/lang/String;

    iget-object v5, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterStroke:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/mdotm/android/view/MdotMDecrementCounterView;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$6(Lcom/mdotm/android/vast/VastInterstitialActivity;Lcom/mdotm/android/view/MdotMDecrementCounterView;)V

    .line 326
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 329
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "videoLayout.getHeight()-circularView.getHeight()"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$7(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$8(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/view/MdotMDecrementCounterView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$8(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/view/MdotMDecrementCounterView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$9(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$8(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/view/MdotMDecrementCounterView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 336
    iget v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$videoDuration:I

    div-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$remainingTime:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counteroffset:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$10(Lcom/mdotm/android/vast/VastInterstitialActivity;Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$11(Lcom/mdotm/android/vast/VastInterstitialActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$12(Lcom/mdotm/android/vast/VastInterstitialActivity;Z)V

    .line 338
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterSize:Ljava/lang/String;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x3ffb333333333333L    # 1.7

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$13(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1, v9}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v1

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$7(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterSize:Ljava/lang/String;

    invoke-static {v4}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    double-to-int v4, v4

    invoke-static {v3, v4}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v3, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v3

    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v4, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$9(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$13(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$7(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$9(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    :cond_0
    iget v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$remainingTime:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$8(Lcom/mdotm/android/vast/VastInterstitialActivity;)Lcom/mdotm/android/view/MdotMDecrementCounterView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$9(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 353
    :cond_1
    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v0}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$13(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v1, v9}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v1

    iget-object v2, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v2}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$7(Lcom/mdotm/android/vast/VastInterstitialActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->val$counterSize:Ljava/lang/String;

    invoke-static {v4}, Lcom/mdotm/android/view/MdotMDecrementCounterView;->getMultipler(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v4, v10

    const-wide v6, 0x3ff3333333333333L    # 1.2

    div-double/2addr v4, v6

    double-to-int v4, v4

    invoke-static {v3, v4}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v3, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v3

    iget-object v4, p0, Lcom/mdotm/android/vast/VastInterstitialActivity$5;->this$0:Lcom/mdotm/android/vast/VastInterstitialActivity;

    invoke-static {v4, v8}, Lcom/mdotm/android/vast/VastInterstitialActivity;->access$14(Lcom/mdotm/android/vast/VastInterstitialActivity;I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method
