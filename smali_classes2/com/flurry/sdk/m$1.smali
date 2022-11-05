.class final Lcom/flurry/sdk/m$1;
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

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/flurry/sdk/m$1;->d:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$1;->a:Lcom/flurry/sdk/de;

    iput-object p3, p0, Lcom/flurry/sdk/m$1;->b:Landroid/view/View;

    iput p4, p0, Lcom/flurry/sdk/m$1;->c:I

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/flurry/sdk/m$1;->d:Lcom/flurry/sdk/m;

    iget-object v2, p0, Lcom/flurry/sdk/m$1;->a:Lcom/flurry/sdk/de;

    iget-object v0, p0, Lcom/flurry/sdk/m$1;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget v3, p0, Lcom/flurry/sdk/m$1;->c:I

    invoke-static {v1, v2, v0, v3}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/m;Lcom/flurry/sdk/de;Landroid/widget/ImageView;I)V

    .line 167
    return-void
.end method
