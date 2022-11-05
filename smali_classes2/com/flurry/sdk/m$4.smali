.class final Lcom/flurry/sdk/m$4;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/de;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/flurry/sdk/r;

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/ViewGroup;Lcom/flurry/sdk/r;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/flurry/sdk/m$4;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$4;->a:Lcom/flurry/sdk/de;

    iput-object p3, p0, Lcom/flurry/sdk/m$4;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/flurry/sdk/m$4;->c:Lcom/flurry/sdk/r;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/flurry/sdk/m$4;->d:Lcom/flurry/sdk/m;

    iget-object v2, p0, Lcom/flurry/sdk/m$4;->a:Lcom/flurry/sdk/de;

    iget-object v3, p0, Lcom/flurry/sdk/m$4;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/flurry/sdk/m$4;->c:Lcom/flurry/sdk/r;

    check-cast v0, Lcom/flurry/sdk/x;

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/ViewGroup;Lcom/flurry/sdk/x;)V

    .line 243
    return-void
.end method
