.class final Lcom/adcolony/sdk/cq$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/cq;->g(Lcom/adcolony/sdk/cr;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/adcolony/sdk/cq$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/cq$14;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bz;->d(Ljava/lang/String;)V

    .line 290
    return-void
.end method
