.class public Lcom/adcolony/sdk/AdColonyAdSize;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MEDIUM_RECTANGLE:Lcom/adcolony/sdk/AdColonyAdSize;

.field static final c:Lcom/adcolony/sdk/AdColonyAdSize;


# instance fields
.field a:I

.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyAdSize;-><init>(II)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyAdSize;->MEDIUM_RECTANGLE:Lcom/adcolony/sdk/AdColonyAdSize;

    .line 13
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyAdSize;-><init>(II)V

    sput-object v0, Lcom/adcolony/sdk/AdColonyAdSize;->c:Lcom/adcolony/sdk/AdColonyAdSize;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/adcolony/sdk/AdColonyAdSize;->a:I

    .line 18
    iput p2, p0, Lcom/adcolony/sdk/AdColonyAdSize;->b:I

    .line 19
    return-void
.end method
