.class Landroid/support/v4/app/as$c;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"

# interfaces
.implements Landroid/support/v4/app/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public a(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p1, p2, p3, p4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 180
    return-void
.end method
