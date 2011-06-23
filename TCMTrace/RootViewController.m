#import "RootViewController.h"
#import "TCMTrace.h"

@implementation RootViewController

- (void)viewDidLoad
{
    TCM_TRACE_BEGIN();
    [super viewDidLoad];
    TCM_TRACE_END();
}

- (void)viewWillAppear:(BOOL)animated
{
    TCM_TRACE_BEGIN();
    [super viewWillAppear:animated];
    TCM_TRACE_END();
}

- (void)viewDidAppear:(BOOL)animated
{
    TCM_TRACE_BEGIN();
    [super viewDidAppear:animated];
    TCM_TRACE_END();
}

- (void)viewWillDisappear:(BOOL)animated
{
    TCM_TRACE_BEGIN();
	[super viewWillDisappear:animated];
    TCM_TRACE_END();
}

- (void)viewDidDisappear:(BOOL)animated
{
    TCM_TRACE_BEGIN();
	[super viewDidDisappear:animated];
    TCM_TRACE_END();
}

 // Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    TCM_TRACE_BEGIN();
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
    TCM_TRACE_END();
}

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    TCM_TRACE_BEGIN();
    return 1;
    TCM_TRACE_END();
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    TCM_TRACE_BEGIN();
    return 1;
    TCM_TRACE_END();
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCM_TRACE_BEGIN();
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        TCM_TRACE(@"Created cell");
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Row %d", indexPath.row];

    // Configure the cell.
    return cell;
    TCM_TRACE_END();
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // Delete the row from the data source.
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert)
    {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCM_TRACE_BEGIN();
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    TCM_TRACE(@"deselected row %d", indexPath.row);
    TCM_TRACE_END();
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload
{
    [super viewDidUnload];

    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}

- (void)dealloc
{
    [super dealloc];
}

@end
