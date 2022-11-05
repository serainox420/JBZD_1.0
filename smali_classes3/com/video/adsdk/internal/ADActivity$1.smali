.class Lcom/video/adsdk/internal/ADActivity$1;
.super Ljava/lang/Object;
.source "ADActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADActivity;->fakeOnCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/ADActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADActivity;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/video/adsdk/internal/ADActivity$1;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity$1;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/ADActivity;->fakeOnFinish()V

    .line 242
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity$1;->this$0:Lcom/video/adsdk/internal/ADActivity;

    invoke-static {v0}, Lcom/video/adsdk/internal/ADActivity;->access$000(Lcom/video/adsdk/internal/ADActivity;)V

    .line 243
    return-void
.end method
