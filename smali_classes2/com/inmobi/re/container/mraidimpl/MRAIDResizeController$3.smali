.class Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$3;
.super Ljava/lang/Object;
.source "MRAIDResizeController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$3;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/re/container/IMWebView;->userInitiatedClose:Z

    .line 258
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController$3;->a:Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;

    invoke-static {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;->a(Lcom/inmobi/re/container/mraidimpl/MRAIDResizeController;)Lcom/inmobi/re/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->close()V

    .line 259
    return-void
.end method
