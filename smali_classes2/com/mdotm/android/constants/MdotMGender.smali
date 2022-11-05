.class public final enum Lcom/mdotm/android/constants/MdotMGender;
.super Ljava/lang/Enum;
.source "MdotMGender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mdotm/android/constants/MdotMGender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/mdotm/android/constants/MdotMGender;

.field public static final enum FEMALE:Lcom/mdotm/android/constants/MdotMGender;

.field public static final enum MALE:Lcom/mdotm/android/constants/MdotMGender;

.field public static final enum UNKNOWN:Lcom/mdotm/android/constants/MdotMGender;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/mdotm/android/constants/MdotMGender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/mdotm/android/constants/MdotMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdotm/android/constants/MdotMGender;->MALE:Lcom/mdotm/android/constants/MdotMGender;

    .line 6
    new-instance v0, Lcom/mdotm/android/constants/MdotMGender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/mdotm/android/constants/MdotMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdotm/android/constants/MdotMGender;->FEMALE:Lcom/mdotm/android/constants/MdotMGender;

    .line 7
    new-instance v0, Lcom/mdotm/android/constants/MdotMGender;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/mdotm/android/constants/MdotMGender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mdotm/android/constants/MdotMGender;->UNKNOWN:Lcom/mdotm/android/constants/MdotMGender;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mdotm/android/constants/MdotMGender;

    sget-object v1, Lcom/mdotm/android/constants/MdotMGender;->MALE:Lcom/mdotm/android/constants/MdotMGender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mdotm/android/constants/MdotMGender;->FEMALE:Lcom/mdotm/android/constants/MdotMGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mdotm/android/constants/MdotMGender;->UNKNOWN:Lcom/mdotm/android/constants/MdotMGender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mdotm/android/constants/MdotMGender;->ENUM$VALUES:[Lcom/mdotm/android/constants/MdotMGender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mdotm/android/constants/MdotMGender;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/mdotm/android/constants/MdotMGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/constants/MdotMGender;

    return-object v0
.end method

.method public static values()[Lcom/mdotm/android/constants/MdotMGender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mdotm/android/constants/MdotMGender;->ENUM$VALUES:[Lcom/mdotm/android/constants/MdotMGender;

    array-length v1, v0

    new-array v2, v1, [Lcom/mdotm/android/constants/MdotMGender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
