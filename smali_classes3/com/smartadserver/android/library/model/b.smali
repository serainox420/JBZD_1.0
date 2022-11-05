.class public Lcom/smartadserver/android/library/model/b;
.super Ljava/lang/Object;
.source "SASReward.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/smartadserver/android/library/model/b;->a:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/smartadserver/android/library/model/b;->b:D

    .line 20
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/smartadserver/android/library/model/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartadserver/android/library/model/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
