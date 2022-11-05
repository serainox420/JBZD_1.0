.class Lcom/adcolony/sdk/cq$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq$19;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cq$19;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cq$19;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/adcolony/sdk/cq$19$1;->a:Lcom/adcolony/sdk/cq$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/adcolony/sdk/cq$19$1;->a:Lcom/adcolony/sdk/cq$19;

    iget-object v0, v0, Lcom/adcolony/sdk/cq$19;->b:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->a()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/cq$19$1;->a:Lcom/adcolony/sdk/cq$19;

    iget v1, v1, Lcom/adcolony/sdk/cq$19;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 407
    return-void
.end method
