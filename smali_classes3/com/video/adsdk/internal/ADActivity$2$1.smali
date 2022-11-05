.class Lcom/video/adsdk/internal/ADActivity$2$1;
.super Ljava/lang/Object;
.source "ADActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/ADActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/video/adsdk/internal/ADActivity$2;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/ADActivity$2;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/video/adsdk/internal/ADActivity$2$1;->this$1:Lcom/video/adsdk/internal/ADActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/video/adsdk/internal/ADActivity$2$1;->this$1:Lcom/video/adsdk/internal/ADActivity$2;

    iget-object v0, v0, Lcom/video/adsdk/internal/ADActivity$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 323
    return-void
.end method
