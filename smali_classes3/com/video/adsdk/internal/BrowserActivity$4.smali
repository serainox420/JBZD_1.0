.class Lcom/video/adsdk/internal/BrowserActivity$4;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/video/adsdk/internal/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/BrowserActivity;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/video/adsdk/internal/BrowserActivity$4;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/video/adsdk/internal/BrowserActivity$4;->this$0:Lcom/video/adsdk/internal/BrowserActivity;

    invoke-virtual {v0}, Lcom/video/adsdk/internal/BrowserActivity;->finish()V

    .line 116
    return-void
.end method
