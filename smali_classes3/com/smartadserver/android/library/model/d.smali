.class public Lcom/smartadserver/android/library/model/d;
.super Ljava/lang/Object;
.source "SASViewabilityPixel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:D

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DI)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartadserver/android/library/model/d;->d:I

    .line 12
    iput-object p1, p0, Lcom/smartadserver/android/library/model/d;->a:Ljava/lang/String;

    .line 13
    iput-wide p2, p0, Lcom/smartadserver/android/library/model/d;->c:D

    .line 14
    iput p4, p0, Lcom/smartadserver/android/library/model/d;->b:I

    .line 15
    return-void
.end method
