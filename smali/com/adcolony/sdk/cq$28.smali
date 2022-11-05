.class final Lcom/adcolony/sdk/cq$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->g(Lcom/adcolony/sdk/cr;I)V
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
    .line 157
    iput-object p1, p0, Lcom/adcolony/sdk/cq$28;->a:Lcom/adcolony/sdk/cr;

    iput p2, p0, Lcom/adcolony/sdk/cq$28;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/adcolony/sdk/cq;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close was called via javascript"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/cb;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    iget-object v0, p0, Lcom/adcolony/sdk/cq$28;->a:Lcom/adcolony/sdk/cr;

    invoke-interface {v0}, Lcom/adcolony/sdk/cr;->b()V

    .line 162
    invoke-static {}, Lcom/adcolony/sdk/cp;->b()Lcom/adcolony/sdk/cp;

    move-result-object v0

    iget v1, p0, Lcom/adcolony/sdk/cq$28;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/cp;->a(ILjava/util/List;)V

    .line 163
    return-void
.end method
