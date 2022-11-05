.class Lcom/adcolony/sdk/aj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/aj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/aj;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/aj;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adcolony/sdk/aj$1;->a:Lcom/adcolony/sdk/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adcolony/sdk/aj$1;->a:Lcom/adcolony/sdk/aj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adcolony/sdk/aj;->q:Z

    .line 46
    return-void
.end method
