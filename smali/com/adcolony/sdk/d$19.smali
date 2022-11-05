.class Lcom/adcolony/sdk/d$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/adcolony/sdk/d$19;->a:Lcom/adcolony/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/z;)V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/adcolony/sdk/d$19$1;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/d$19$1;-><init>(Lcom/adcolony/sdk/d$19;Lcom/adcolony/sdk/z;)V

    invoke-static {v0}, Lcom/adcolony/sdk/au;->a(Ljava/lang/Runnable;)Z

    .line 481
    return-void
.end method
