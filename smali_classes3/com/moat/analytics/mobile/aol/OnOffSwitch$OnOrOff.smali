.class public final enum Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
.super Ljava/lang/Enum;
.source "OnOffSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/aol/OnOffSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnOrOff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

.field public static final enum OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

.field public static final enum ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 34
    new-instance v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->OFF:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->ON:Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    aput-object v1, v0, v3

    sput-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->$VALUES:[Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->$VALUES:[Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/aol/OnOffSwitch$OnOrOff;

    return-object v0
.end method
