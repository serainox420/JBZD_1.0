.class Lcom/mdotm/android/view/MdotMActivity$6;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->onUseCustomClose(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;

.field private final synthetic val$isCustomeClose:Z


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$6;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    iput-boolean p2, p0, Lcom/mdotm/android/view/MdotMActivity$6;->val$isCustomeClose:Z

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/mdotm/android/view/MdotMActivity$6;->val$isCustomeClose:Z

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$6;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$2(Lcom/mdotm/android/view/MdotMActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 778
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "custom close"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/mdotm/android/view/MdotMActivity$6;->val$isCustomeClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    return-void

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$6;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$2(Lcom/mdotm/android/view/MdotMActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
