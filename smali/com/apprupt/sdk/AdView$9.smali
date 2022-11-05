.class Lcom/apprupt/sdk/AdView$9;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AdView;->b(Lcom/apprupt/sdk/mediation/InlineAdWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AdView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AdView;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lcom/apprupt/sdk/AdView$9;->a:Lcom/apprupt/sdk/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/apprupt/sdk/AdView$9;->a:Lcom/apprupt/sdk/AdView;

    invoke-static {v0}, Lcom/apprupt/sdk/AdView;->m(Lcom/apprupt/sdk/AdView;)V

    .line 609
    return-void
.end method
