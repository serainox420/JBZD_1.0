.class public Lcom/loopme/request/CustomRequestParameter;
.super Ljava/lang/Object;
.source "CustomRequestParameter.java"


# instance fields
.field private mParamName:Ljava/lang/String;

.field private mParamValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/loopme/request/CustomRequestParameter;->mParamName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/loopme/request/CustomRequestParameter;->mParamValue:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getParamName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/loopme/request/CustomRequestParameter;->mParamName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/loopme/request/CustomRequestParameter;->mParamValue:Ljava/lang/String;

    return-object v0
.end method
