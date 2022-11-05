.class final Lcom/flurry/sdk/gh$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/gh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gh;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/flurry/sdk/gh$4;->a:Lcom/flurry/sdk/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/flurry/sdk/gh$4;->a:Lcom/flurry/sdk/gh;

    invoke-virtual {v0}, Lcom/flurry/sdk/gh;->m()V

    .line 378
    return-void
.end method
