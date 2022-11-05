.class final Lcom/flurry/sdk/he$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/he;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/flurry/sdk/r;Lcom/flurry/sdk/gz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/he;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/he;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/flurry/sdk/he$1;->a:Lcom/flurry/sdk/he;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/flurry/sdk/he$1;->a:Lcom/flurry/sdk/he;

    sget-object v1, Lcom/flurry/sdk/he$c;->c:Lcom/flurry/sdk/he$c;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/he;->a(Lcom/flurry/sdk/he$c;)V

    .line 427
    return-void
.end method
