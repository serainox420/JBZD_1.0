.class final Lcom/adcolony/sdk/cq$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->p(Lcom/adcolony/sdk/cr;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/cr;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cr;I)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/adcolony/sdk/cq$22;->a:Lcom/adcolony/sdk/cr;

    iput p2, p0, Lcom/adcolony/sdk/cq$22;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/adcolony/sdk/cq$22;->a:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->a()Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$22;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cq;->a(Landroid/webkit/WebView;ILjava/lang/String;)V

    .line 449
    return-void
.end method
