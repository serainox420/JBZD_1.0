.class public Lcom/openx/common/deviceData/managers/OXMPreference;
.super Ljava/lang/Object;
.source "OXMPreference.java"


# instance fields
.field private mExpired:Z

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/openx/common/deviceData/managers/OXMPreference;->mValue:Ljava/lang/String;

    .line 26
    iput-boolean p2, p0, Lcom/openx/common/deviceData/managers/OXMPreference;->mExpired:Z

    .line 27
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/openx/common/deviceData/managers/OXMPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/openx/common/deviceData/managers/OXMPreference;->mExpired:Z

    return v0
.end method
