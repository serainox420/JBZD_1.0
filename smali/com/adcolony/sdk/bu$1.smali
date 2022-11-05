.class Lcom/adcolony/sdk/bu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/bt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bu;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bu;)V
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/adcolony/sdk/bu$1;->a:Lcom/adcolony/sdk/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 9
    invoke-static {}, Lcom/adcolony/sdk/bz;->aK()Lcom/adcolony/sdk/bz;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/bn$a;->C:Lcom/adcolony/sdk/bn$a;

    const-string v2, "Caught fatal exception"

    const/4 v3, 0x1

    .line 10
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/adcolony/sdk/bz;->a(Ljava/lang/Exception;Lcom/adcolony/sdk/bn$a;Ljava/lang/String;Z)V

    .line 11
    return-void
.end method
