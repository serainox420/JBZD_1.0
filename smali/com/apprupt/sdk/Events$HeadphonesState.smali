.class final enum Lcom/apprupt/sdk/Events$HeadphonesState;
.super Ljava/lang/Enum;
.source "Events.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HeadphonesState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apprupt/sdk/Events$HeadphonesState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/apprupt/sdk/Events$HeadphonesState;

.field public static final enum b:Lcom/apprupt/sdk/Events$HeadphonesState;

.field public static final enum c:Lcom/apprupt/sdk/Events$HeadphonesState;

.field private static final synthetic d:[Lcom/apprupt/sdk/Events$HeadphonesState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/apprupt/sdk/Events$HeadphonesState;

    const-string v1, "Plugged"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/Events$HeadphonesState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    new-instance v0, Lcom/apprupt/sdk/Events$HeadphonesState;

    const-string v1, "Unplugged"

    invoke-direct {v0, v1, v3}, Lcom/apprupt/sdk/Events$HeadphonesState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->b:Lcom/apprupt/sdk/Events$HeadphonesState;

    new-instance v0, Lcom/apprupt/sdk/Events$HeadphonesState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/apprupt/sdk/Events$HeadphonesState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->c:Lcom/apprupt/sdk/Events$HeadphonesState;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/apprupt/sdk/Events$HeadphonesState;

    sget-object v1, Lcom/apprupt/sdk/Events$HeadphonesState;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apprupt/sdk/Events$HeadphonesState;->b:Lcom/apprupt/sdk/Events$HeadphonesState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apprupt/sdk/Events$HeadphonesState;->c:Lcom/apprupt/sdk/Events$HeadphonesState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->d:[Lcom/apprupt/sdk/Events$HeadphonesState;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(I)Lcom/apprupt/sdk/Events$HeadphonesState;
    .locals 1

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 66
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->c:Lcom/apprupt/sdk/Events$HeadphonesState;

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->b:Lcom/apprupt/sdk/Events$HeadphonesState;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apprupt/sdk/Events$HeadphonesState;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/apprupt/sdk/Events$HeadphonesState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apprupt/sdk/Events$HeadphonesState;

    return-object v0
.end method

.method public static values()[Lcom/apprupt/sdk/Events$HeadphonesState;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->d:[Lcom/apprupt/sdk/Events$HeadphonesState;

    invoke-virtual {v0}, [Lcom/apprupt/sdk/Events$HeadphonesState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apprupt/sdk/Events$HeadphonesState;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->c:Lcom/apprupt/sdk/Events$HeadphonesState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/apprupt/sdk/Events$HeadphonesState;->a:Lcom/apprupt/sdk/Events$HeadphonesState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
