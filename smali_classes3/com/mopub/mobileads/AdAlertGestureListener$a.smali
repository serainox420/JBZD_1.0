.class final enum Lcom/mopub/mobileads/AdAlertGestureListener$a;
.super Ljava/lang/Enum;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/AdAlertGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mobileads/AdAlertGestureListener$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field public static final enum FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field public static final enum GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field public static final enum GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field public static final enum UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$a;

.field private static final synthetic a:[Lcom/mopub/mobileads/AdAlertGestureListener$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const-string v1, "UNSET"

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/AdAlertGestureListener$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const-string v1, "GOING_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/mopub/mobileads/AdAlertGestureListener$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const-string v1, "GOING_LEFT"

    invoke-direct {v0, v1, v4}, Lcom/mopub/mobileads/AdAlertGestureListener$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v5}, Lcom/mopub/mobileads/AdAlertGestureListener$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    new-instance v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v6}, Lcom/mopub/mobileads/AdAlertGestureListener$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mopub/mobileads/AdAlertGestureListener$a;

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->UNSET:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_RIGHT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->GOING_LEFT:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FINISHED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/mobileads/AdAlertGestureListener$a;->FAILED:Lcom/mopub/mobileads/AdAlertGestureListener$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->a:[Lcom/mopub/mobileads/AdAlertGestureListener$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/AdAlertGestureListener$a;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mobileads/AdAlertGestureListener$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/mopub/mobileads/AdAlertGestureListener$a;->a:[Lcom/mopub/mobileads/AdAlertGestureListener$a;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/AdAlertGestureListener$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/AdAlertGestureListener$a;

    return-object v0
.end method
