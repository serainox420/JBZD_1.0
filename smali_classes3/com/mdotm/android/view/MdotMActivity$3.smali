.class Lcom/mdotm/android/view/MdotMActivity$3;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->getVideoLayout()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/view/MdotMActivity;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$3;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 358
    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$3;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$3(Lcom/mdotm/android/view/MdotMActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$3;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-static {v0, v1}, Lcom/mdotm/android/view/MdotMActivity;->access$4(Lcom/mdotm/android/view/MdotMActivity;Z)V

    .line 361
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$3;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->clicked()V

    .line 364
    :cond_0
    return v1
.end method
