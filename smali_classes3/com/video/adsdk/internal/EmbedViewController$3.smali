.class Lcom/video/adsdk/internal/EmbedViewController$3;
.super Ljava/lang/Object;
.source "EmbedViewController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/video/adsdk/internal/EmbedViewController;->onShowDialog(Ljava/lang/String;Landroid/webkit/JsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/video/adsdk/internal/EmbedViewController;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/video/adsdk/internal/EmbedViewController;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/video/adsdk/internal/EmbedViewController$3;->this$0:Lcom/video/adsdk/internal/EmbedViewController;

    iput-object p2, p0, Lcom/video/adsdk/internal/EmbedViewController$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/video/adsdk/internal/EmbedViewController$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 145
    return-void
.end method
