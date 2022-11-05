.class Lcom/madsdk/FullScreenDialog$1;
.super Ljava/lang/Object;
.source "FullScreenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/FullScreenDialog;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/FullScreenDialog;


# direct methods
.method constructor <init>(Lcom/madsdk/FullScreenDialog;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/madsdk/FullScreenDialog$1;->this$0:Lcom/madsdk/FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/madsdk/FullScreenDialog$1;->this$0:Lcom/madsdk/FullScreenDialog;

    invoke-static {v0}, Lcom/madsdk/FullScreenDialog;->access$000(Lcom/madsdk/FullScreenDialog;)Lcom/madsdk/javascript/MraidEventsListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/madsdk/javascript/MraidEventsListener;->close()V

    .line 41
    return-void
.end method
