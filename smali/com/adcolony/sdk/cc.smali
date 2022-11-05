.class abstract Lcom/adcolony/sdk/cc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field b:Lcom/adcolony/sdk/cd;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/cd;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/adcolony/sdk/cc;->b:Lcom/adcolony/sdk/cd;

    .line 8
    return-void
.end method


# virtual methods
.method abstract b()V
.end method

.method c()V
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/cc;->b:Lcom/adcolony/sdk/cd;

    invoke-virtual {v0}, Lcom/adcolony/sdk/cd;->b()V

    .line 12
    return-void
.end method
