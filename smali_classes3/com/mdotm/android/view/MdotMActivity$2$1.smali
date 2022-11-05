.class Lcom/mdotm/android/view/MdotMActivity$2$1;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mdotm/android/view/MdotMActivity$2;


# direct methods
.method constructor <init>(Lcom/mdotm/android/view/MdotMActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$2$1;->this$1:Lcom/mdotm/android/view/MdotMActivity$2;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$2$1;->this$1:Lcom/mdotm/android/view/MdotMActivity$2;

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity$2;->access$0(Lcom/mdotm/android/view/MdotMActivity$2;)Lcom/mdotm/android/view/MdotMActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mdotm/android/view/MdotMActivity;->access$2(Lcom/mdotm/android/view/MdotMActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    return-void
.end method
