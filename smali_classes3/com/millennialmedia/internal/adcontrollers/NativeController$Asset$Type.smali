.class public final enum Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;
.super Ljava/lang/Enum;
.source "NativeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

.field public static final enum IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

.field public static final enum TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

.field public static final enum UNKNOWN:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

.field public static final enum VIDEO:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

.field private static final synthetic a:[Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->VIDEO:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->UNKNOWN:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->TITLE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->IMAGE:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->VIDEO:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->DATA:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->UNKNOWN:Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->a:[Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->a:[Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    invoke-virtual {v0}, [Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/internal/adcontrollers/NativeController$Asset$Type;

    return-object v0
.end method
