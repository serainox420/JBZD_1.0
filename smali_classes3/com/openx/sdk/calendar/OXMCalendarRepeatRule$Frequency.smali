.class public final enum Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;
.super Ljava/lang/Enum;
.source "OXMCalendarRepeatRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openx/sdk/calendar/OXMCalendarRepeatRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Frequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field public static final enum DAILY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field public static final enum MONTHLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field public static final enum UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field public static final enum WEEKLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

.field public static final enum YEARLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    const-string v1, "DAILY"

    invoke-direct {v0, v1, v2}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->DAILY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 20
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v3}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->WEEKLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 21
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1, v4}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->MONTHLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 22
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    const-string v1, "YEARLY"

    invoke-direct {v0, v1, v5}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->YEARLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 23
    new-instance v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->DAILY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->WEEKLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->MONTHLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->YEARLY:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    aput-object v1, v0, v5

    sget-object v1, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->UNKNOWN:Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    aput-object v1, v0, v6

    sput-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    return-object v0
.end method

.method public static values()[Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->$VALUES:[Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    invoke-virtual {v0}, [Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/openx/sdk/calendar/OXMCalendarRepeatRule$Frequency;

    return-object v0
.end method
