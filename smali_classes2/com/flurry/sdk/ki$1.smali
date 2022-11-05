.class final Lcom/flurry/sdk/ki$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ki;->a(Lcom/flurry/sdk/kg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kh;

.field final synthetic b:Lcom/flurry/sdk/kg;

.field final synthetic c:Lcom/flurry/sdk/ki;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ki;Lcom/flurry/sdk/kh;Lcom/flurry/sdk/kg;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/flurry/sdk/ki$1;->c:Lcom/flurry/sdk/ki;

    iput-object p2, p0, Lcom/flurry/sdk/ki$1;->a:Lcom/flurry/sdk/kh;

    iput-object p3, p0, Lcom/flurry/sdk/ki$1;->b:Lcom/flurry/sdk/kg;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/ki$1;->a:Lcom/flurry/sdk/kh;

    iget-object v1, p0, Lcom/flurry/sdk/ki$1;->b:Lcom/flurry/sdk/kg;

    invoke-interface {v0, v1}, Lcom/flurry/sdk/kh;->a(Lcom/flurry/sdk/kg;)V

    .line 137
    return-void
.end method
