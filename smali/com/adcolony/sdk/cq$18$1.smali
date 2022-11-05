.class Lcom/adcolony/sdk/cq$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq$18;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adcolony/sdk/cq$18;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cq$18;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/adcolony/sdk/cq$18$1;->b:Lcom/adcolony/sdk/cq$18;

    iput-object p2, p0, Lcom/adcolony/sdk/cq$18$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/adcolony/sdk/cq$18$1;->b:Lcom/adcolony/sdk/cq$18;

    iget-object v0, v0, Lcom/adcolony/sdk/cq$18;->b:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->a()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/cq$18$1;->b:Lcom/adcolony/sdk/cq$18;

    iget v1, v1, Lcom/adcolony/sdk/cq$18;->c:I

    iget-object v2, p0, Lcom/adcolony/sdk/cq$18$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 376
    return-void
.end method
