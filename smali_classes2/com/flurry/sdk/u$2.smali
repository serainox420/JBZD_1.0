.class public final Lcom/flurry/sdk/u$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/u;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/u;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/flurry/sdk/u$2;->a:Lcom/flurry/sdk/u;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/flurry/sdk/u$2;->a:Lcom/flurry/sdk/u;

    invoke-static {v0}, Lcom/flurry/sdk/u;->a(Lcom/flurry/sdk/u;)V

    .line 130
    return-void
.end method
