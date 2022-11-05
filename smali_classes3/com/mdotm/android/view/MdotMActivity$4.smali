.class Lcom/mdotm/android/view/MdotMActivity$4;
.super Ljava/lang/Object;
.source "MdotMActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/view/MdotMActivity;->getCloseButtonView()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/mdotm/android/view/MdotMActivity$4;->this$0:Lcom/mdotm/android/view/MdotMActivity;

    invoke-virtual {v0}, Lcom/mdotm/android/view/MdotMActivity;->onDismissScreen()V

    .line 459
    return-void
.end method
