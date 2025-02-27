//
//  Copyright (C) 2016  Kapeli
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

#import "DHRepoTableViewCell.h"

@implementation DHRepoTableViewCell

- (void)setTagsToIndex:(NSInteger)index
{
    self.downloadButton.tag = index;
    self.progressView.stopButton.tag = index;
    self.errorButton.tag = index;
    self.uninstallButton.tag = index;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.titleLabel.textColor = UIColor.labelColor;
    self.contentView.backgroundColor = UIColor.secondarySystemBackgroundColor;
    self.backgroundColor = UIColor.secondarySystemBackgroundColor;
}

- (NSString *)accessibilityValue
{
    return [self.titleLabel accessibilityValue];
}

@end
