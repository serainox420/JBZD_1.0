.class Lcom/mdotm/android/view/MdotMXhtmlView$2;
.super Ljava/lang/Thread;
.source "MdotMXhtmlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMXhtmlView;->showActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMXhtmlView;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMXhtmlView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMXhtmlView$2;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    .line 206
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$2;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$4(Lcom/mdotm/android/view/MdotMXhtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$2;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$4(Lcom/mdotm/android/view/MdotMXhtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 212
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMXhtmlView$2;->this$0:Lcom/mdotm/android/view/MdotMXhtmlView;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMXhtmlView;->access$4(Lcom/mdotm/android/view/MdotMXhtmlView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    :cond_0
    return-void
.end method
